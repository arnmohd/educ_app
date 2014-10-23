class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  
  def sign_in
    @user = User.new
  end

  def login
   email       = params[:user][:email]
   password    = params[:user][:password]
   user = User.find_by_email(email)
         if  user && (user.password == password)
             session[:user_id] = user.id
             redirect_to  :show_courses
         else 
             redirect_to :sign_in
         end
   end
   
  def register_user
    @user = User.new
  end

   def register
      @user = User.new(params[:user])
      if @user.save
         redirect_to :sign_in
      else
         redirect_to :register_user
         
      end
   end
   
  def sign_out
     session[:course_id]    =  nil
     session[:syllabus_id] =  nil
     session[:chapter_id]  =  nil
     session[:header_id]   =  nil
    redirect_to :root 
  end
 
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  
 
 

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
 

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

end
