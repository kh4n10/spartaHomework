class Video
	attr_accessor :id, :title, :description, :url


	# connects the database
	def self.connect_database
		PG.connect(dbname: "youtube_post")
	end
	
	# hydrate allows the hash to be displayed onto the website and is then used within the all function
		# the hash is displayed due to the index.erb
	def self.hydrate video_data
  	video = Video.new

    video.id = video_data['id']
    video.title = video_data['title']
    video.description = video_data['description']
    video.url = video_data['url']

    video
	end

	# opens a connection to database, runs a sql and then hydrating the data so its in ruby format
	# the results variable runs the conn and sql variables
	def self.all
		conn = self.connect_database
		sql = "SELECT id,title,description,url FROM video_table ORDER BY id;"
		results = conn.exec(sql)

		results.map { |result| self.hydrate(result) }
	end
	

	# this function allows to find a video by its specific id
	# the sql command allows to find the video with the relevenat id, using WHERE method
		# LIMIT method limits it so you can only get one video
	def self.find(id)
		conn = self.connect_database
		sql = "SELECT id,title,description,url FROM video_table WHERE id = '#{id}' LIMIT 1;"
		results = conn.exec(sql)

		self.hydrate(results[0])
	end

	# This function allows the new/edited form to be saved into the database
	def save
  	conn = Video.connect_database
    if(!self.id) 
    	# Insert a new record in to the database
    	sql = "INSERT INTO video_table (title,description,url) VALUES ( '#{self.title}', '#{self.description}', '#{self.url}')"
    else 
    	# Update an existing one
    	sql = "UPDATE video_table SET title='#{self.title}', description='#{self.description}', url='#{self.url}' WHERE id = #{self.id}"
    end

  	conn.exec(sql)
  end

  def self.destroy(id)
  	conn = self.connect_database
  	sql = "DELETE FROM video_table WHERE id = '#{id}';"
  	conn.exec(sql)
  end

end