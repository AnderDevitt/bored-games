require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        name: "Name",
        condition: 2,
        min_player: 3,
        max_player: 4,
        price: 5.5,
        description: "Description",
        user: nil
      ),
      Game.create!(
        name: "Name",
        condition: 2,
        min_player: 3,
        max_player: 4,
        price: 5.5,
        description: "Description",
        user: nil
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.5.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
