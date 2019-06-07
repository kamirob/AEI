require 'test_helper'

class Admin::InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_invoice = admin_invoices(:one)
  end

  test "should get index" do
    get admin_invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_invoice_url
    assert_response :success
  end

  test "should create admin_invoice" do
    assert_difference('Admin::Invoice.count') do
      post admin_invoices_url, params: { admin_invoice: {  } }
    end

    assert_redirected_to admin_invoice_url(Admin::Invoice.last)
  end

  test "should show admin_invoice" do
    get admin_invoice_url(@admin_invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_invoice_url(@admin_invoice)
    assert_response :success
  end

  test "should update admin_invoice" do
    patch admin_invoice_url(@admin_invoice), params: { admin_invoice: {  } }
    assert_redirected_to admin_invoice_url(@admin_invoice)
  end

  test "should destroy admin_invoice" do
    assert_difference('Admin::Invoice.count', -1) do
      delete admin_invoice_url(@admin_invoice)
    end

    assert_redirected_to admin_invoices_url
  end
end
