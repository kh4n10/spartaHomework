class Video < Sinatra::Base
	attr_accessor :id, :title, :description, :url


	def self.connect_database
		PG.connect(dbname: 'youtube_post')
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