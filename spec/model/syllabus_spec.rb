require 'spec_helper'

describe Course do
  
  before do
        @syllabus = Syllabus.new(name:"Atomic Physics",course_id:"1")
  end
  
      subject { @syllabus }
          
                it { should respond_to(:name) }
                it { should respond_to(:course_id) }
          
                describe "when name is not present" do
                before { @syllabus.name = " " }
                it { should_not be_valid }
                 end
             
                describe "when course id is not present" do
                before { @syllabus.course_id = " " }
                it { should_not be_valid }
                 end
   
                 describe "when name is too long" do
                     before { @syllabus.name = "a" * 51 }
                     it { should_not be_valid }
                  end
     
  
end