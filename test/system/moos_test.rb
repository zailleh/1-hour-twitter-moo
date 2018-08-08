require "application_system_test_case"

class MoosTest < ApplicationSystemTestCase
  setup do
    @moo = moos(:one)
  end

  test "visiting the index" do
    visit moos_url
    assert_selector "h1", text: "Moos"
  end

  test "creating a Moo" do
    visit moos_url
    click_on "New Moo"

    fill_in "Content", with: @moo.content
    click_on "Create Moo"

    assert_text "Moo was successfully created"
    click_on "Back"
  end

  test "updating a Moo" do
    visit moos_url
    click_on "Edit", match: :first

    fill_in "Content", with: @moo.content
    click_on "Update Moo"

    assert_text "Moo was successfully updated"
    click_on "Back"
  end

  test "destroying a Moo" do
    visit moos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moo was successfully destroyed"
  end
end
