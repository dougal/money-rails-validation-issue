require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def test_is_valid_with_positive_price
    product = Product.new(price_cents: 1299)

    assert product.valid?
  end

  def test_is_invalid_with_zero_price
    product = Product.new(price_cents: 0)

    assert product.invalid?
  end

  def test_is_invalid_with_negative_price
    product = Product.new(price_cents: -1)

    assert product.invalid?
  end

end
