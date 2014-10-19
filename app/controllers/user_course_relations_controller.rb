class UserCourseRelationsController < ApplicationController
  # GET /user_course_relations
  # GET /user_course_relations.json
  def index
    @user_course_relations = UserCourseRelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_course_relations }
    end
  end

  # GET /user_course_relations/1
  # GET /user_course_relations/1.json
  def show
    @user_course_relation = UserCourseRelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_course_relation }
    end
  end

  # GET /user_course_relations/new
  # GET /user_course_relations/new.json
  def new
    @user_course_relation = UserCourseRelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_course_relation }
    end
  end

  # GET /user_course_relations/1/edit
  def edit
    @user_course_relation = UserCourseRelation.find(params[:id])
  end

  # POST /user_course_relations
  # POST /user_course_relations.json
  def create
    @user_course_relation = UserCourseRelation.new(params[:user_course_relation])

    respond_to do |format|
      if @user_course_relation.save
        format.html { redirect_to @user_course_relation, notice: 'User course relation was successfully created.' }
        format.json { render json: @user_course_relation, status: :created, location: @user_course_relation }
      else
        format.html { render action: "new" }
        format.json { render json: @user_course_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_course_relations/1
  # PUT /user_course_relations/1.json
  def update
    @user_course_relation = UserCourseRelation.find(params[:id])

    respond_to do |format|
      if @user_course_relation.update_attributes(params[:user_course_relation])
        format.html { redirect_to @user_course_relation, notice: 'User course relation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_course_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_course_relations/1
  # DELETE /user_course_relations/1.json
  def destroy
    @user_course_relation = UserCourseRelation.find(params[:id])
    @user_course_relation.destroy

    respond_to do |format|
      format.html { redirect_to user_course_relations_url }
      format.json { head :no_content }
    end
  end
end
