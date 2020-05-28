require "application_system_test_case"

class GungemesTest < ApplicationSystemTestCase
  setup do
    @gungeme = gungemes(:one)
  end

  test "visiting the index" do
    visit gungemes_url
    assert_selector "h1", text: "Gungemes"
  end

  test "creating a Gungeme" do
    visit gungemes_url
    click_on "New Gungeme"

    fill_in "Comment", with: @gungeme.comment
    fill_in "Friendid", with: @gungeme.friendid
    fill_in "Machine", with: @gungeme.machine
    fill_in "Name", with: @gungeme.name
    fill_in "Purpose", with: @gungeme.purpose
    fill_in "Vc", with: @gungeme.vc
    click_on "Create Gungeme"

    assert_text "Gungeme was successfully created"
    click_on "Back"
  end

  test "updating a Gungeme" do
    visit gungemes_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @gungeme.comment
    fill_in "Friendid", with: @gungeme.friendid
    fill_in "Machine", with: @gungeme.machine
    fill_in "Name", with: @gungeme.name
    fill_in "Purpose", with: @gungeme.purpose
    fill_in "Vc", with: @gungeme.vc
    click_on "Update Gungeme"

    assert_text "Gungeme was successfully updated"
    click_on "Back"
  end

  test "destroying a Gungeme" do
    visit gungemes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gungeme was successfully destroyed"
  end
end
