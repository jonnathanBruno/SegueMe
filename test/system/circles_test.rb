require "application_system_test_case"

class CirclesTest < ApplicationSystemTestCase
  setup do
    @circle = circles(:one)
  end

  test "visiting the index" do
    visit circles_url
    assert_selector "h1", text: "Circles"
  end

  test "creating a Circle" do
    visit circles_url
    click_on "New Circle"

    click_on "Create Circle"

    assert_text "Circle was successfully created"
    click_on "Back"
  end

  test "updating a Circle" do
    visit circles_url
    click_on "Edit", match: :first

    click_on "Update Circle"

    assert_text "Circle was successfully updated"
    click_on "Back"
  end

  test "destroying a Circle" do
    visit circles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Circle was successfully destroyed"
  end
end
