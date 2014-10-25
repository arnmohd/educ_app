require 'spec_helper'

describe "CoursesPages" do
  before  do
   it { should have_selector('h3', text: 'Available Courses') }
   it { should  have_link('Sign Out', href: Sign_Out_path) }
   it { should  have_link('Master Setup', href: show_masters_path) } 
  end
end
