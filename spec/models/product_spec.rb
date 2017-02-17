require 'rails_helper'

describe Product do
it { should validate_presence_of :name}
it { should validate_presence_of :description}
it { should validate_presence_of :found_in}
it { should validate_presence_of :going_price}
it { should belong_to :user }
it { should have_many :comments}
it { should have_one :image }
end
