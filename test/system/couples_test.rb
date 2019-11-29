require "application_system_test_case"

class CouplesTest < ApplicationSystemTestCase
  setup do
    @couple = couples(:one)
  end

  test "visiting the index" do
    visit couples_url
    assert_selector "h1", text: "Couples"
  end

  test "creating a Couple" do
    visit couples_url
    click_on "New Couple"

    fill_in "Category", with: @couple.category
    fill_in "Groom", with: @couple.groom_id
    click_on "Create Couple"

    assert_text "Couple was successfully created"
    click_on "Back"
  end

  test "updating a Couple" do
    visit couples_url
    click_on "Edit", match: :first

    fill_in "Category", with: @couple.category
    fill_in "Groom", with: @couple.groom_id
    click_on "Update Couple"

    assert_text "Couple was successfully updated"
    click_on "Back"
  end

  test "destroying a Couple" do
    visit couples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Couple was successfully destroyed"
  end
end
