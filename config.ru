# require "sinatra"
# require "sinatra/reloader"
# require_relative 'controllers/posts_controllers.rb'

# run PostsController

require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?
require_relative 'controllers/posts_controllers.rb'
# require_relative '.modles/post.rb'

run PostsController