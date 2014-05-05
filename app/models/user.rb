class User < ActiveRecord::Base
  attr_accessible :email, :password, :user_name
  validates :user_name, presence: true
  
	def self.authenticate(user_name, password)
	  user = User.find_by_user_name(user_name)

	  if user && user.password == password

		return user
	  else
	  
		return false
	  end
	end   
	
	def self.validate_email(email)
  
	  email_regex = %r{
		^ # Start of string
		[0-9a-z] # First character
		[0-9a-z.+]+ # Middle characters
		[0-9a-z] # Last character
		@ # Separating @ character
		[0-9a-z] # Domain name begin
		[0-9a-z.-]+ # Domain name middle
		[0-9a-z] # Domain name end
		$ # End of string
	  }xi # Case insensitive
	  
	  if (email =~ email_regex) == 0
		return true
	  else
		return false
	  end
	end
	
end
