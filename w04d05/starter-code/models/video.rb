class Video
	attr_accessor :id, :title, :description, :url


	# connects the database
	def self.connect_database
		PG.connect(dbname: "youtube_post")
	end
	

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
		sql = "SELECT id,title,description,url FROM post ORDER BY id;"
		results = conn.exec(sql)

		results.map { |result| self.hydrate(result) }
	end
	
end