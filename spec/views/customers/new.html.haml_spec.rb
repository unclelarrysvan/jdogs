require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
      assert_select "input#customer_first_name[name=?]", "customer[first_name]"
      assert_select "input#customer_last_name[name=?]", "customer[last_name]"
      assert_select "input#customer_email[name=?]", "customer[email]"
      assert_select "input#customer_phone[name=?]", "customer[phone]"
    end
  end
end
