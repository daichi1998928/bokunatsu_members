class Admin::SessionsController < ApplicationController

 def index
   redirect_to new_admin_sessions_path
 end
 

 def new
   
 end
 
 def create
   member = Member.find_by(nickname: session_params[:nickname])

   if member&.authenticate(session_params[:password])
    session[:member_id] = member.id
    
    redirect_to edit_admin_member_path(member.id)
   else 
    render :new
   end
 end
 
 private

 def session_params
   params.require(:session).permit(:nickname,:password)
 end
 

end
