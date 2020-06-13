class Member < ApplicationRecord
  has_secure_password
  attachment :profile_image
  
  belongs_to :assign_school
  belongs_to :university
  belongs_to :grade
  belongs_to :title_of_branch
  has_many :branches_members
  has_many :personalities ,dependent: :destroy
  has_many :links,dependent: :destroy

  accepts_nested_attributes_for :links,reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :personalities,reject_if: proc { |attributes| attributes['content_name'].blank? }, allow_destroy: true

  # branches_membersは運営部と支部メンバーを兼ねてるメンバーがいるのでhas_many
end
