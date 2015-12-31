require 'rails_helper'

describe "users/index", :type => :view do
  it "renders _information partial for user data" do
    assign(:user, User.new)

    render

    expect(view).to render_template(:partial => "_information")
  end
end