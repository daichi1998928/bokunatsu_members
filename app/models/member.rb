class Member < ApplicationRecord
  has_secure_password
  attachment :profile_image
  
end
