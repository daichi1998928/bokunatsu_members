class Admin::MembersController < ApplicationController
  def new
    @new_member = Member.new
  end

  def edit
  end

  def create
    binding.pry
  end
end
