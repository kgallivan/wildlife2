require 'rails_helper'

RSpec.describe "animals/edit", type: :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      :name => "MyString",
      :location => "MyText"
    ))
  end

  it "renders the edit animal form" do
    render

    assert_select "form[action=?][method=?]", animal_path(@animal), "post" do

      assert_select "input#animal_name[name=?]", "animal[name]"

      assert_select "textarea#animal_location[name=?]", "animal[location]"
    end
  end
end
