module ApplicationHelper

	def profile_pic_url(for_user)

		# todo: show picture of the currently used identity + fix twitter
    	graph = Koala::Facebook::API.new

    	client = Twitter::REST::Client.new do |config|
			  config.consumer_key        = "IQSpmVTl1S42EJENiWMRRTlIJ"
			  config.consumer_secret     = "gLvrNDFb6N8peeRYf0CoWXOHB6KCPbRx2wrECWeeKtcrfqLm31"
			  #config.access_token        = "YOUR_ACCESS_TOKEN"
		  	#config.access_token_secret = "YOUR_ACCESS_SECRET"
			end

    	for_user.identities.each do |identity|
				if identity.provider == "facebook"
	    		id = identity.uid
	    		@url = graph.get_picture(id, height: 200, width: 200) 
	    	end

	    	if identity.provider == "twitter"
	    		id = identity.uid
	    		@url = client.user(id.to_i).profile_image_url
	    	end
    	end

   	@url.to_str.remove("_normal")
  end

  def twitter_username(for_user)
  	client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "IQSpmVTl1S42EJENiWMRRTlIJ"
		  config.consumer_secret     = "gLvrNDFb6N8peeRYf0CoWXOHB6KCPbRx2wrECWeeKtcrfqLm31"
		  #config.access_token        = "YOUR_ACCESS_TOKEN"
	  	#config.access_token_secret = "YOUR_ACCESS_SECRET"
		end

		for_user.identities.each do |identity|
	    if identity.provider == "twitter"
    		id = identity.uid
    		@username = client.user(id.to_i).screen_name
    	end
    end

   	@username
  end



end
