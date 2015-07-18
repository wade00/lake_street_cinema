require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "email is dowcased before order is updated" do
    order = orders(:stus_order)
    order.update(email: "STU@exaMplE.neT")
    assert_equal "stu@example.net", order.email
  end
end
