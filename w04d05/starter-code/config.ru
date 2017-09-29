# require all the gems in your gemfile
require "sinatra"
require "sinatra/reloader" if development?
require "pg"


# require the blueprint of the models and controllers
require_relative "./models/video.rb"
require_relative "./controllers/videos_controller.rb"

use Rack::Reloader
use Rack::MethodOverride

run VideosController