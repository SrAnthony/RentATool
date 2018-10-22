# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  name                :string(255)
#  image               :string(255)
#  description         :text(65535)
#  tension             :integer
#  stock               :integer
#  value               :float(24)
#  discount            :float(24)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
