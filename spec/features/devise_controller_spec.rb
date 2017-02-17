
require 'rails_helper'

describe "user account creation" do
  it "will show no pictures when there aren't any" do
    visit new_user_registration_path
    fill_in "User name", :with => "Captain Jack"
    fill_in "Name", :with => "Definitely not Sparrow"
    fill_in "Email", :with => "blackflag@pirate.com"
    fill_in "Password", :with => "123abc"
    fill_in "Password confirmation", :with => "123abc"
    click_button "Sign up"
    expect(page).to have_content "Congratulations Captain Jack"
  end
  it "will not let user leave any field blank" do
    visit new_user_registration_path
    fill_in "User name", :with => ""
    fill_in "Name", :with => ""
    fill_in "Email", :with => ""
    fill_in "Password", :with => "123abc"
    fill_in "Password confirmation", :with => ""
    click_button "Sign up"
    expect(page).to have_content "4 errors"

  end

end
