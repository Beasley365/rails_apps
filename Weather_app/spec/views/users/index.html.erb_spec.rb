require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :lattitude => 1.5,
        :longitude => 1.5,
        :city => "City",
        :weather => 1
      ),
      User.create!(
        :lattitude => 1.5,
        :longitude => 1.5,
        :city => "City",
        :weather => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
