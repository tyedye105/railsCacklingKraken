require 'rails_helper'

describe User do
  it { should have_many :products}
  it { should validate_presence_of :name}
  it { should validate_presence_of :user_name}
  it { should validate_presence_of :email}



end
