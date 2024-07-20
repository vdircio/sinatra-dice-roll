require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


# web servers listen for http requests
# sinatra is a lightweight and flexible framework for building web applications
# it'll help us pasrse HTTP requests, assemble valid HTTP responses, and send them out


get '/' do      # when someone places a request for the path given, do something
  "<h1>Dice Roll</h1>
  <ul>
    <li><a href=\"/dice/2/6\">Roll two die with 6 faces</a></li>
    <li><a href=\"/dice/2/10\">Roll two die with 6 faces</a></li>
  </ul>
  " # the action - the last evaluated expression in here 
#is what Sinatra sends back as the body of out http response
end
# "/" is the root url
# So when we visited the root URL of our live app preview with our browser, the browser sent a request that looks like this:
# GET / HTTP/1.1
# Host: raghubetina-curly-computing-machine-www7pwj47h59gw-4567.preview.app.github.dev

get "/zebra" do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  rand1 = rand(6) + 1
  rand2 = rand(6) + 1
  sum = rand1 + rand2

  output = "you rolled a #{rand1} and a #{rand2} for a total of #{sum}"
  "<h1>2d6</h1>
  <p>#{output}</p>"
end

get("/dice/2/10") do
  rand1 = rand(10) + 1
  rand2 = rand(10) + 1
  sum = rand1 + rand2
  output = "you rolled a #{rand1} and a #{rand2} for a total of #{sum}"
  "<h1>2d10</h1>
  <p>#{output}</p>"
end
