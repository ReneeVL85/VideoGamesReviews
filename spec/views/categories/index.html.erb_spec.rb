require "rails_helper"

RSpec.describe "categories/index.html.erb", type: :view do
  let(:categories) {create_list(:category, 3)}

  before do
    assign(:categories, categories)
    render
  end

  it "shows a title" do
    assert_select "h1", text: "Videogames", count: 1
  end

  it "render all the categories" do
    categories.each do |category|
      assert_select "h3", text: category.name, count: 1
    end
  end
end
