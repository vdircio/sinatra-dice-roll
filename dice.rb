require "sinatra"

# web servers listen for http requests
# sinatra is a lightweight and flexible framework for building web applications
# it'll help us pasrse HTTP requests, assemble valid HTTP responses, and send them out

get '/' do      # when someone places a request for the path given, do something
  "Hello world" # the action - the last evaluated expression in here is what Sinatra sends back as the body of out http response
end
# "/" is the root url
# So when we visited the root URL of our live app preview with our browser, the browser sent a request that looks like this:
# GET / HTTP/1.1
# Host: raghubetina-curly-computing-machine-www7pwj47h59gw-4567.preview.app.github.dev

get "/zebra" do
  "We must add a route for each path we want to support"
end
