require 'spec_helper'

describe Role do
  
  before do
        @role = Role.new(description:"Student")
  end
  
      subject { @role }
          
                it { should respond_to(:description) }
          
                describe "when description  is not present" do
                before { @role.description = " " }
                it { should_not be_valid }
                 end
   
      
                  describe "when description is too long" do
                     before { @role.description = "a" * 51 }
                     it { should_not be_valid }
                  end
     
  
end