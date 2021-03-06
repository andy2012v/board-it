require "rails_helper"

feature "account deletion" do
  scenario "user deletes account successfully" do
    user = FactoryGirl.create(:user)
    visit root_path
    within('div.right') do
       click_on 'Sign In'
    end
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log In'

    click_on "Edit Profile"
    fill_in 'Email', with: 'newemail@example.com'
    click_on 'Cancel my account'

    expect(page).to have_content("Bye! Your account has been successfully cancelled. We hope to see you again soon.")
  end
end
