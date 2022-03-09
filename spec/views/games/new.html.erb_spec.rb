require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      name: "MyString",
      condition: 1,
      min_player: 1,
      max_player: 1,
      price: 1.5,
      description: "MyString",
      user: nil
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input[name=?]", "game[name]"

      assert_select "input[name=?]", "game[condition]"

      assert_select "input[name=?]", "game[min_player]"

      assert_select "input[name=?]", "game[max_player]"

      assert_select "input[name=?]", "game[price]"

      assert_select "input[name=?]", "game[description]"

      assert_select "input[name=?]", "game[user_id]"
    end
  end
end
