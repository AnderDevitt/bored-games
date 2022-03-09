require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      name: "Name",
      condition: 2,
      min_player: 3,
      max_player: 4,
      price: 5.5,
      description: "Description",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
