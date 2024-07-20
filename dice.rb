require "sinatra"

# web servers listen for http requests
# sinatra is a lightweight and flexible framework for building web applications
# it'll help us pasrse HTTP requests, assemble valid HTTP responses, and send them out

get '/' do
  "Hello world"
end
