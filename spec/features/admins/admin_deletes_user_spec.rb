require "rails_helper"

feature "admin can delete a user" do
  scenario "admin delete user" do
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

    expect(page).to have_content("Users Index")
    click_on("Users Index")

    expect(page).to have_content("Bob")
    expect(page).to have_link("Bob")
    click_on("Bob")

    expect(page).to have_content("Bob")
    expect(page).to have_content("Destroy")
    click_on('Destroy')

    expect(page).to have_content("User deleted")
  end
end
