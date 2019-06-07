require "application_system_test_case"

class Admin::InvoicesTest < ApplicationSystemTestCase
  setup do
    @admin_invoice = admin_invoices(:one)
  end

  test "visiting the index" do
    visit admin_invoices_url
    assert_selector "h1", text: "Admin/Invoices"
  end

  test "creating a Invoice" do
    visit admin_invoices_url
    click_on "New Admin/Invoice"

    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit admin_invoices_url
    click_on "Edit", match: :first

    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit admin_invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end
