require "application_system_test_case"

class StatusWorksTest < ApplicationSystemTestCase
  setup do
    @status_work = status_works(:one)
  end

  test "visiting the index" do
    visit status_works_url
    assert_selector "h1", text: "Status Works"
  end

  test "creating a Status work" do
    visit status_works_url
    click_on "New Status Work"

    fill_in "Etape", with: @status_work.etape
    click_on "Create Status work"

    assert_text "Status work was successfully created"
    click_on "Back"
  end

  test "updating a Status work" do
    visit status_works_url
    click_on "Edit", match: :first

    fill_in "Etape", with: @status_work.etape
    click_on "Update Status work"

    assert_text "Status work was successfully updated"
    click_on "Back"
  end

  test "destroying a Status work" do
    visit status_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status work was successfully destroyed"
  end
end
