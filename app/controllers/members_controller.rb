class MembersController < ApplicationController
    def index
        @members = Member.all
        gon.members = @members
    end
    
    def show
        
    end
    
end
