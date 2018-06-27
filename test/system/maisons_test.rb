require "application_system_test_case"

class MaisonsTest < ApplicationSystemTestCase
  setup do
    @maison = maisons(:one)
  end

  test "visiting the index" do
    visit maisons_url
    assert_selector "h1", text: "Maisons"
  end

  test "creating a Maison" do
    visit maisons_url
    click_on "New Maison"

    click_on "Create Maison"

    assert_text "Maison was successfully created"
    click_on "Back"
  end

  test "updating a Maison" do
    visit maisons_url
    click_on "Edit", match: :first

    click_on "Update Maison"

    assert_text "Maison was successfully updated"
    click_on "Back"
  end

  test "destroying a Maison" do
    visit maisons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maison was successfully destroyed"
  end
end
