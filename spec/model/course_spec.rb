require 'spec_helper'

describe Course do
  
  before do
        @course = Course.new(name:"Bachelor of Science-Physics")
  end
  
      subject { @course }
          
                it { should respond_to(:name) }
          
                describe "when name is not present" do
                before { @course.name = " " }
                it { should_not be_valid }
                 end
   
      
                  describe "when name is too long" do
                     before { @course.name = "a" * 51 }
                     it { should_not be_valid }
                  end
     
  
end