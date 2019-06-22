class User < ApplicationRecord
	has_secure_password
	validates_uniqueness_of :email, :display_name
end
