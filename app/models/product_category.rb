# frozen_string_literal: true
# == Schema Information
#
# Table name: product_categories
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductCategory < ApplicationRecord
  has_many :products
end
