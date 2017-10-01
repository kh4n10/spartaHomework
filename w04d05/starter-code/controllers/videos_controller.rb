class VideosController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the views directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader in order to get the sinatra gem methods
  configure :development do
      register Sinatra::Reloader
  end


	# the index which shows everything on the root directory
	get "/" do

		@videos = Video.all
		erb :'videos/index'
	end

	# creates a new video, which links to the new.erb file
	get "/new" do

		@video = Video.new
		erb :'videos/new'
	end

	# gets the id of a specifc video that you want
		# then is displayed onto the html by using the show.erb
	get "/:id" do
		id = params[:id].to_i
		@video = Video.find(id)
		erb :'videos/show'
	end	

	# posts the form for creating a new video
		# the params get the data from the hash and store it, however this links back to the video.rb file
		# where the attr_accessor, hydrate method assists in this
	post "/" do

    video = Video.new
    video.title = params[:title]
    video.description = params[:description]
    video.url = params[:url]

    video.save
    redirect "/"
	end
	
	# gets the form for the specific id and then allows user to edit existing content
	get "/:id/edit" do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i
    # make a single object available in the template
    @video = Video.find(id)
    erb :'videos/edit'
	end

	# puts the new/edited form onto the specific id
	put "/:id" do
   
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the post object from our data store
    video = Video.find(id)
      
    # update the values of the object with data from the request
    video.title = params[:title]
    video.description = params[:description]
    video.url = params[:url]
      
    # save the post back to our data store ( at the spot it came from this time )
    video.save
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/"
	end


	# deletes the video
	delete "/:id" do

    # get the id of the video that wants deleting
    id = params[:id].to_i

    # delete the video from the array
    Video.destroy(id)

    # redirect back to the homepage
    redirect "/"
	end
	
end