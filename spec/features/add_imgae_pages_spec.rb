require "rails_helper"

describe "adding an image" do
  it "will let the adminstrator add an image." do
    user = FactoryBot.create(:user)
    user.is_admin = true
    user.save
    product = FactoryBot.create(:product)
    visit new_user_session_path()
    fill_in "Email", :with => "Morty@m.com"
    fill_in 'Password', :with => "Morty32"
    click_button 'Log in'
    click_link "Check Out Our Wares!"
    click_link 'click here for more details about this item'
    click_link 'Add Picture'
    page.attach_file('image[product_image]', 'app/assets/images/treasure.jpeg')
    fill_in 'Title', :with => "Booty"
    fill_in 'Description', :with => "Its a nice bit of booty."
    click_button 'Create Image'
    expect(page).to have_content 'You have added an image to this product!'
  end
end
