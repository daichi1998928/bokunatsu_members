class MembersController < ApplicationController
    def index
        @members = Member.all
        gon.members = @members
    end
    
    def show
        @member = Member.find(params[:id])
        binding.pry
       if @member.grade.number == 1
            render "show_first"
       elsif @member.grade.number == 2
            render "show_secound"
        end
    end

    def new
        @member = Member.new
    end
    
    def create
    end
    
end
