require 'rails_helper'

describe Comment do
it { should validate_presence_of :comment}
it { should belong_to :user }
it { should belong_to :product }

end
