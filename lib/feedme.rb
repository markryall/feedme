require 'grape'
require 'rack/cors'
require 'feedme/comment'
require 'digest/md5'

module Feedme
  class API < Grape::API
    version 'v1', using: :header, vendor: 'feedme'

    use Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post]
      end
    end

    format :json

    resource :comments do
      namespace ':slug' do
        get do
          Comment.where 'slug = ?', params[:slug]
        end
      end

      post :create do
        require 'pp'
        pp params
        pp params['comment']
        Comment.create params['comment']
      end
    end
  end
end