require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :unique_identifier => "Unique Identifier",
        :user_type => "User Type"
      ),
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :unique_identifier => "Unique Identifier",
        :user_type => "User Type"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Unique Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "User Type".to_s, :count => 2
  end
end
