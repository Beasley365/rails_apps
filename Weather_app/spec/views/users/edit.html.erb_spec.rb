require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :lattitude => 1.5,
      :longitude => 1.5,
      :city => "MyString",
      :weather => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_lattitude[name=?]", "user[lattitude]"

      assert_select "input#user_longitude[name=?]", "user[longitude]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_weather[name=?]", "user[weather]"
    end
  end
end
