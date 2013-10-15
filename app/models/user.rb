class User < ActiveRecord::Base
	validates :name, presence:true, length:{maximum:50}
	VALID_EMAIL_FORMAT = /\A[a-zA-Z]+[\w+\-.]*@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:true, format:{with:VALID_EMAIL_FORMAT}
end
