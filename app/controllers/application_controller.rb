class ApplicationController < ActionController::Base
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
