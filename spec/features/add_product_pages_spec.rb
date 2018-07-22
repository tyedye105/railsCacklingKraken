require "rails_helper"

describe "add product path" do
  it "will let the user at a product to the inventory" do
    @user = FactoryBot.create(:user)
    @user.is_admin = true
    @user.save
    visit new_user_session_path
    fill_in "Email", :with => "Morty@m.com"
    fill_in 'Password', :with => "Morty32"
    click_button 'Log in'
    click_link 'Check Out Our Wares!'
    click_link 'Add A Product'
    fill_in "Name", :with => "Cursed Box"
    fill_in "Description", :with => "It's cursed"
    fill_in "Found in", :with => "Steve's Backyard"
    fill_in "Going price", :with => "20"
    click_button "Create Product"
    expect(page).to have_content 'Cursed Box'

  end
end
