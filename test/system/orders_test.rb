require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit store_index_url

    first('.catalog li').click_on 'Add to Cart'

    click_on 'Checkout'

    fill_in 'order_name', with: 'Hitesh Goel'
    fill_in 'order_address', with: 'alskdjka'
    fill_in 'order_email', with: 'hitesh@io.i'
  
    assert_no_selector "#order_routing_number"

    select 'Check', from: 'pay_type'

    assert_selector "#order_routing_number"
  end
end
