require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :lattitude => 1.5,
      :longitude => 1.5,
      :city => "MyString",
      :weather => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_lattitude[name=?]", "user[lattitude]"

      assert_select "input#user_longitude[name=?]", "user[longitude]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_weather[name=?]", "user[weather]"
    end
  end
end
