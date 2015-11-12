require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :lattitude => 1.5,
      :longitude => 1.5,
      :city => "City",
      :weather => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/1/)
  end
end
