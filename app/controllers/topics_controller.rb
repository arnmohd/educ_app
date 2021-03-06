class TopicsController < ApplicationController
  # GET /topics
  # GET /topics.json
  
  def show_topic
     @course   =    Course.find(params[:course_id])
     @syllabus =    Syllabus.find(params[:syllabus_id])
     @chapter  =    Chapter.find(params[:chapter_id])
     @header   =    Header.find(params[:header_id])
     session[:course_id]   =  params[:course_id]
     session[:syllabus_id] =  params[:syllabus_id]
     session[:chapter_id]  =  params[:chapter_id]
     session[:header_id]   =  params[:header_id]
     @topics    =   Topic.where(course_id: @course.id, syllabus_id: @syllabus.id, chapter_id: @chapter.id, header_id: @header.id)
  end
  
  
  def index
    @topics = Topic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topics }
    end
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @topic = Topic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topic }
    end
  end

  # GET /topics/new
  # GET /topics/new.json
  def new
    @topic = Topic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @topic }
    end
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end
  
  def update_topic
    @topic    = Topic.find(params[:id])
    @course   = Course.find(@topic.course_id)
    @syllabus = Syllabus.find(@topic.syllabus_id)
    @chapter  = Chapter.find(@topic.chapter_id)
    @header   = Header.find(@topic.header_id)
  end
  
  def update_content
    
   @topic = Topic.find(params[:topic][:id])
   
   
    if @topic.update_attributes(params[:topic])
        render "update_status"
      else
        flash[:notice]="Update not Successfull"
        redirect_to :update_topic
      end
    
  
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(params[:topic])

    respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render json: @topic, status: :created, location: @topic }
      else
        format.html { render action: "new" }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /topics/1
  # PUT /topics/1.json
  def update
    @topic = Topic.find(params[:id])

    respond_to do |format|
      if @topic.update_attributes(params[:topic])
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to topics_url }
      format.json { head :no_content }
    end
  end
end
