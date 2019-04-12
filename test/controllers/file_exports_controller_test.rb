require 'test_helper'

class FileExportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_export = file_exports(:one)
  end

  test "should get index" do
    get file_exports_url
    assert_response :success
  end

  test "should get new" do
    get new_file_export_url
    assert_response :success
  end

  test "should create file_export" do
    assert_difference('FileExport.count') do
      post file_exports_url, params: { file_export: { description: @file_export.description, file: @file_export.file } }
    end

    assert_redirected_to file_export_url(FileExport.last)
  end

  test "should show file_export" do
    get file_export_url(@file_export)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_export_url(@file_export)
    assert_response :success
  end

  test "should update file_export" do
    patch file_export_url(@file_export), params: { file_export: { description: @file_export.description, file: @file_export.file } }
    assert_redirected_to file_export_url(@file_export)
  end

  test "should destroy file_export" do
    assert_difference('FileExport.count', -1) do
      delete file_export_url(@file_export)
    end

    assert_redirected_to file_exports_url
  end
end
