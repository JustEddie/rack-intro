require 'rack'

my_server = proc do
  [200, { 'Content-Type' => 'text/thml' }, ['<em>Hello</em>']]
end

run my_server
