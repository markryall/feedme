require 'grape'
require 'rack/cors'
require 'feedme/comment'

module Feedme
  class API < Grape::API

    use Rack::Cors do
      allow do
        origins /.*/
        resource '*', headers: :any, methods: [:get, :post]
      end
    end

    format :json

    resource 'comments' do
      get '/' do
        Comment.all
      end

      post '/create' do
        Comment.create params['comment']
      end
    end
  end
end