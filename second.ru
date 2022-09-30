require 'rack'

class MyServer 
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Ha!</em>"] : ["<strong>Hello</strong>"]
    end

end

run MyServer.new