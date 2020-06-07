class Admin::MembersController < ApplicationController
  def new
    @new_member = Member.new
    @new_branch_member = BranchesMember.new
    @branch = UniversityBranch.all
    @grade = Grade.all
    @title_of_branch = TitleOfBranch.all
    @university = University.all
    @assign_school = AssignSchool.all
  end

  def edit
  end

  def create
    @new_member = Member.new(member_params)
    @new_member.save!
    branches_member = BranchesMember.new(university_branch_id: params[:member][:branches_member][:university_branch_id],member_id: @new_member.id)
    branches_member.save!
  end

  def member_params
    params.require(:member).permit(:title_of_branch_id,:university_id,:grade_id,:assign_school_id,:name,:name_kana,:profile_image,:nickname,:faculty,:history,:deciding_factor,:objective,:episode,:password,:password_confimation)
  end

  def branches_members_params
    params.require(:branches_member).permit(:university_branch_id)
  end
  
end
