require "rails_helper"

describe "adding an image" do
  it "will let the adminstrator add an image." do
    user = FactoryGirl.create(:user)
    user.is_admin = true
    product = FactoryGirl.create(:product)
    visit user_product_path(product, user)
    click_link 'Add Picture'
    page.attach_file('image[product_image]', 'app/assets/images/treasure.jpeg')
    fill_in 'Title', :with => "Booty"
    fill_in 'description', :with => "Its a nice bit of booty."
    click_button 'Create Image'
    expect(page).to have_xpath("//img[contains(@src,treasure.jpg')]")
  end
end
