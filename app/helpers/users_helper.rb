module UsersHelper
<<<<<<< HEAD
	def load_image_from_robohash(user)
		
		image_url="https://robohash.org/#{user.email}"

		return image_tag(image_url,alt:user.name,class:"img-thumbnail")
    end
=======
>>>>>>> fea79a16629de1290d9058f07d792a9809124d2c
end
