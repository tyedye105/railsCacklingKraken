require "rails_helper"

describe "adding an image" do
  it "will let the adminstrator add an image." do
    user = FactoryGirl.create(:user)
    user.is_admin = true
    user.save
    product = FactoryGirl.create(:product)
    visit new_user_session_path()
    fill_in "Email", :with => "Morty@m.com"
    fill_in 'Password', :with => "Morty32"
    click_button 'Log in'
    click_link "Check Out Our Wares!"
    click_link 'click here for more details about this item'
    click_link 'Say Something about it!'
    fill_in 'Say it here:', :with => "A scathing critique"
    click_button 'Create Comment'
    click_link 'delete this comment'
    expect(page).to have_content 'No one has said anything about this thing yet....'
  end
end
