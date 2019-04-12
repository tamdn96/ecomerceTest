require "application_system_test_case"

class FileExportsTest < ApplicationSystemTestCase
  setup do
    @file_export = file_exports(:one)
  end

  test "visiting the index" do
    visit file_exports_url
    assert_selector "h1", text: "File Exports"
  end

  test "creating a File export" do
    visit file_exports_url
    click_on "New File Export"

    fill_in "Description", with: @file_export.description
    fill_in "File", with: @file_export.file
    click_on "Create File export"

    assert_text "File export was successfully created"
    click_on "Back"
  end

  test "updating a File export" do
    visit file_exports_url
    click_on "Edit", match: :first

    fill_in "Description", with: @file_export.description
    fill_in "File", with: @file_export.file
    click_on "Update File export"

    assert_text "File export was successfully updated"
    click_on "Back"
  end

  test "destroying a File export" do
    visit file_exports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File export was successfully destroyed"
  end
end
