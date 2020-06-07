class Member < ApplicationRecord
  has_secure_password
  attachment :profile_image
  
  belongs_to :assign_school
  belongs_to :university
  belongs_to :grade
  belongs_to :title_of_branch
  has_many :branches_members
  # branches_membersは運営部と支部メンバーを兼ねてるメンバーがいるのでhas_many
end
