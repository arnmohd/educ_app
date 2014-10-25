require 'spec_helper'

describe "User pages" do
    
    subject { page }

        describe "signup page" do
            before { visit register_user_path }
            it { should have_selector('h3', text: 'Sign Up') }
            
        end
            
          describe "signup" do
            before do
        
           @user = User.new(name: "Example User", email: "user@example.com",
                    password: "foobar", password_confirmation: "foobar", role_id: '3')
            end
             
            
                before { visit register_user_path }
                let(:submit) { "Sign Up" }
                
                describe "with invalid information" do
                    it "should not create a user" do
                    expect { click_button submit }.not_to change(User, :count)
                    end
                end
          
                 describe "with valid information" do
                        before do
                        fill_in "Username", with: @user.name
                        fill_in "Email", with: @user.email
                        fill_in "Password", with: @user.password
                        fill_in "Password confirmation", with: @user.password_confirmation
                        fill_in "Role", with: @user.role_id
                        end
                        it "should create a user" do
                        expect { click_button submit }.to change(User, :count).by(1)
                        end
                end
          end
                  
          describe "sign in" do
                 
          before do
        
           @user = User.new(name: "Example User", email: "user@example.com",
                    password: "foobar", password_confirmation: "foobar", role_id: '3')
            end
                 
              describe "with valid information" do
                before do
                          fill_in "Email", with: @user.email
                          fill_in "Password", with: @user.password
                          click button "Sign in"
                      end
                          
                   it { should  have_link('Home', href: root_path) }
              end
           end
           
           describe "show masters" do
             before do
             it { should  have_link('Courses Master', href: courses_path) }
             it { should  have_link('Subjects Master', href: syllabuses_path) }
             it { should  have_link('Syllabus Master', href: chapters_path) }
             it { should  have_link('Headers Master', href: headers_path) }
             it { should  have_link('Roles Master', href: roles_path) }
             end
           end
                  
            
end
   