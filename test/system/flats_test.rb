require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the homepage listing of flats" do
    visit root_url

    assert_selector "h1", text: "All flats"
  end

  test "visiting the first flat" do

    visit 'flats/145'

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end

end
