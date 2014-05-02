class User < ActiveRecord::Base
  attr_accessible :email, :password, :user_name
  
	def self.authenticate(user_name, password)
	  user = User.find_by_user_name(user_name)
	  p "=====================Model======"
	  p user_name
	  p user
	  p password
	  p "=====================Model======"
	  if user && user.password == password
		return user
	  else
		return false
	  end
	end   
end
