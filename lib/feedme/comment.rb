module Feedme
  class Comment
    EXAMPLE = {
        name: 'anonymous',
        email: 'anon@mail.com',
        body: 'this is my comment'
      }

    def self.all
      [EXAMPLE]
    end

    def self.create params
      EXAMPLE
    end
  end
end