require "rails_helper"

feature "admin can view submitted exercises" do
  scenario "admin clicks on Exercise submissions" do
    admin = FactoryGirl.create(:user, admin: true)
    user = User.create(username: "Bob", password: "Password", password_confirmation: "Password", email: "Bob@bob.bob")

    visit root_path
    within('div.right') do
       click_on 'Sign In'
    end
    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password
    click_button 'Log In'
    click_on 'Admin Tools'

    expect(page).to have_content("Exercise submissions")
    expect(page).to have_content("Users Index")
    expect(page).to have_content("Create Exercise")
    click_link("Exercise submissions")

    expect(user).to have_attributes(:username => "Bob")
  
  end
end
