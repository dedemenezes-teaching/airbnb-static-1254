require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home to see all flats" do
    visit '/'

    assert_selector "h1", text: "Flats"
    assert_selector 'h5', text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end

  test 'visiting first flat page' do
    visit '/flats/145'

    assert_selector 'h1', text: "Charm at the Steps of the Sacre Coeur/Montmartre"
    assert_selector 'p', text: /164/
  end
end
