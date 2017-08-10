require "rails_helper"

#as a user, I want to be able to sign out

feature "user signs up" do
  scenario "as a user, i want to sign out" do
    user = FactoryGirl.create(:user)
    visit root_path
    within('div.right') do
       click_on 'Sign In'
    end
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log In'

    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("Sign Out")

    within('div.right') do
       click_on 'Sign Out'
    end
    expect(page).to have_content("Signed out successfully")
  end
end
