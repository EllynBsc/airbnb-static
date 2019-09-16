require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the homepage listing of flats" do
    visit root_url

    assert_selector "h1", text: "All flats"
  end
end
