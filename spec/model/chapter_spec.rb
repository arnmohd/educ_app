require 'spec_helper'

describe Chapter do
  
  before do
        @chapter = Chapter.new(name:"Nuclear Fission",course_id:"1",syllabus_id:"2")
  end
  
      subject { @chapter }
          
                it { should respond_to(:name) }
                it { should respond_to(:course_id) }
                it { should respond_to(:syllabus_id) }
          
                describe "when name is not present" do
                before { @chapter.name = " " }
                it { should_not be_valid }
                 end
             
                describe "when course id is not present" do
                before { @chapter.course_id = " " }
                it { should_not be_valid }
                 end
                 
                describe "when syllabus id is not present" do
                before { @chapter.syllabus_id = " " }
                it { should_not be_valid }
                 end
   
   
                 describe "when name is too long" do
                     before { @chapter.name = "a" * 51 }
                     it { should_not be_valid }
                  end
     
  
end