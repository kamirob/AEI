require "application_system_test_case"

class Admin::ClientsTest < ApplicationSystemTestCase
  setup do
    @admin_client = admin_clients(:one)
  end

  test "visiting the index" do
    visit admin_clients_url
    assert_selector "h1", text: "Admin/Clients"
  end

  test "creating a Client" do
    visit admin_clients_url
    click_on "New Admin/Client"

    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit admin_clients_url
    click_on "Edit", match: :first

    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit admin_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
