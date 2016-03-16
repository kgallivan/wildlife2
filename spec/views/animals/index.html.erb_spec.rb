require 'rails_helper'

RSpec.describe "animals/index", type: :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        :name => "Name",
        :location => "MyText"
      ),
      Animal.create!(
        :name => "Name",
        :location => "MyText"
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
