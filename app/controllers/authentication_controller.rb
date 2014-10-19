class AuthenticationController < ActionController::Base
  
  
  def sign_in
    @user = User.new
  end

  def login
   email       = params[:user][:email]
   password    = params[:user][:password]
   user = User.find_by_email(email)
   if user && (user.password == password)
    render "show_courses"
   else 
      redirect_to :root
   end
                 
   end
 
end