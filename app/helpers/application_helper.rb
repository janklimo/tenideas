module ApplicationHelper
	def profile_pic_url
    	@graph = Koala::Facebook::API.new

    	if current_user.identities[0].provider == "facebook"
    		id = current_user.identities[0].uid
    	end

    	@graph.get_picture(id, height: 200, width: 200) 
    end
end
