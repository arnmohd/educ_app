require 'spec_helper'

describe "home page" do
       
        it "should have the Mugappir Address" do
          
         visit root_path
  
          page.should have_selector('h1', text: 'Annai Arts & Science College')
          page.should have_selector('h2', text: 'Mugappir, Chennai - 37, India ')
          page.should have_content('This is the home page for the')
          page.should have_content('Annai Arts & Science College')
          page.should have_content('Sign up now')
          page.should have_content('Sign in now')
 
       end 
end