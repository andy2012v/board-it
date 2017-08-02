require "rails_helper"

feature "admin can view submitted exercises" do
  scenario "admin clicks on Exercise submissions" do
    admin = FactoryGirl.create(:user, admin: true)
    user = User.create(username: "Bob", password: "Password", password_confirmation: "Password", email: "Bob@bob.bob")

    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password
    click_button 'Log in'
    click_on 'Admin Tools'

    expect(page).to have_content("Exercise submissions")
    click_on("Exercise submissions")

    expect(page).to have_content("Bob")
    expect(page).to have_link("Bob")
    click_on("Bob")

    expect(page).to have_content("Bob")
    expect(page).to have_content("destroy")
  end
end
