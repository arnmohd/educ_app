require 'spec_helper'

describe Header do
  
  before do
        @header = Header.new(heading:"Fission Materials ",course_id:"1",syllabus_id:"2",chapter_id:"3")
  end
  
      subject { @header }
          
                it { should respond_to(:heading) }
                it { should respond_to(:course_id) }
                it { should respond_to(:syllabus_id) }
                it { should respond_to(:chapter_id) }
          
                describe "when name is not present" do
                before { @header.heading = " " }
                it { should_not be_valid }
                 end
             
                describe "when course id is not present" do
                before { @header.course_id = " " }
                it { should_not be_valid }
                 end
                 
                describe "when syllabus id is not present" do
                before { @header.syllabus_id = " " }
                it { should_not be_valid }
                 end
                 
                describe "when chapter id is not present" do
                   before { @header.chapter_id = " " }
                   it { should_not be_valid }
                 end
   
   
                 describe "when name is too long" do
                     before { @header.heading = "a" * 51 }
                     it { should_not be_valid }
                  end
     
  
end