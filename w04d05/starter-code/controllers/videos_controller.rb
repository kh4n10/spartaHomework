class VideosController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end


	# the index which shows everything on the root directory
	get "/" do


		erb :'videos/index'
	end

	# create a new video link
	get "/new" do
		
	end

	# get the id of a specifc video that you want
	get "/:id" do
		id = params[:id].to_i

	end	

	# posting the form for creating a new video
	post "/" do


	end
	
	# get the form for the specific id and then edit it
	get "/:id/edit" do

	end

	# put the new editted form onto the specific id
	put "/:id" do

	end


	# deletes the video
	delete "/:id" do

	end
	
end