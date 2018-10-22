# frozen_string_literal: true

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

class Product < ApplicationRecord
  include ActionView::Helpers::NumberHelper
  has_one_attached :image
  belongs_to :product_category

  def value_reais
    "R$ #{number_with_precision value, precision: 2, separator: ','}"
  end

  def value_discounted_reais
    "R$ #{number_with_precision (value - discount), precision: 2, separator: ','}"
  end

  def category
    product_category
  end
end
