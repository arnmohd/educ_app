class HeadersController < ApplicationController
  # GET /headers
  # GET /headers.json
  
  def show_headers
     @course =    Course.find(params[:course_id])
     @syllabus =  Syllabus.find(params[:syllabus_id])
     @chapter =   Chapter.find(params[:chapter_id])
     session[:course_id]   = params[:course_id]
     session[:syllabus_id] = params[:syllabus_id]
     session[:chapter_id]  = params[:chapter_id]
     @headers =   Header.where(course_id: @course.id, syllabus_id: @syllabus.id, chapter_id: @chapter.id)
  end
  def index
    @headers = Header.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @headers }
    end
  end

  # GET /headers/1
  # GET /headers/1.json
  def show
    @header = Header.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @header }
    end
  end

  # GET /headers/new
  # GET /headers/new.json
  def new
    @header = Header.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @header }
    end
  end

  # GET /headers/1/edit
  def edit
    @header = Header.find(params[:id])
  end

  # POST /headers
  # POST /headers.json
  def create
    @header = Header.new(params[:header])

    respond_to do |format|
      if @header.save
        format.html { redirect_to @header, notice: 'Header was successfully created.' }
        format.json { render json: @header, status: :created, location: @header }
      else
        format.html { render action: "new" }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /headers/1
  # PUT /headers/1.json
  def update
    @header = Header.find(params[:id])

    respond_to do |format|
      if @header.update_attributes(params[:header])
        format.html { redirect_to @header, notice: 'Header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headers/1
  # DELETE /headers/1.json
  def destroy
    @header = Header.find(params[:id])
    @header.destroy

    respond_to do |format|
      format.html { redirect_to headers_url }
      format.json { head :no_content }
    end
  end
end
