require "rails_helper"

#as a user, I want to be able to sign out

feature "user signs up" do
  scenario "as a user, i want to sign out" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'

    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("Sign Out")

    click_on 'Sign Out'
    expect(page).to have_content("Signed out successfully")
  end
end
