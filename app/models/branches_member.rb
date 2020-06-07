class BranchesMember < ApplicationRecord
  belongs_to :member
  belongs_to :university_branch
end
