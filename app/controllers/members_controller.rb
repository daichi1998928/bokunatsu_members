class MembersController < ApplicationController
    def index
        @members = Member.all
        gon.members = @members
    end
    
    def show
        @member = Member.find(params[:id])
    end

    def new
        @member = Member.new
    end
    
    def create
    end
    
end
