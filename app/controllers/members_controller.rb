class MembersController < ApplicationController
    def index
        @members = Member.all
        gon.members = @members
    end
    
    def show
       if params[:id]== "1"
            render "show_first"
       elsif params[:id] == "2"
            render "show_secound"
        end
    end

    def new
        @member = Member.new
    end
    
    def create
        binding.pry
    end
    
end
