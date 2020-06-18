class ApplicationController < ActionController::Base
<<<<<<< HEAD
	include SessionsHelper

	def hello
		render html: "hello, world!"
	end
	def logged_in_user
        unless logged_in?
          store_location
          flash[:danger] = "please log in."
          redirect_to login_url
        end
      end
     
=======
 def hello
 	render html:"hello, world!"
 end
>>>>>>> fea79a16629de1290d9058f07d792a9809124d2c
end
