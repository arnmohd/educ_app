require 'spec_helper'

describe Topic do
  
  before do
        @topic = Topic.new(content:"Fission Materials content",course_id:"1",syllabus_id:"2",chapter_id:"3",header_id:"1")
  end
  
      subject { @topic }
          
                it { should respond_to(:content) }
                it { should respond_to(:course_id) }
                it { should respond_to(:syllabus_id) }
                it { should respond_to(:chapter_id) }
                it { should respond_to(:header_id) }
                 
                describe "when content is not present" do
                before { @topic.content = " " }
                it { should_not be_valid }
                 end
             
                describe "when course id is not present" do
                before { @topic.course_id = " " }
                it { should_not be_valid }
                 end
                 
                describe "when syllabus id is not present" do
                before { @topic.syllabus_id = " " }
                it { should_not be_valid }
                 end
                 
                describe "when chapter id is not present" do
                   before { @topic.chapter_id = " " }
                   it { should_not be_valid }
                 end
                 
                  describe "when header id is not present" do
                   before { @topic.header_id = " " }
                   it { should_not be_valid }
                 end
  
                 
  end