class Product < ActiveRecord::Base

  monetize :price_cents, with_model_currency: :currency, numericality: { greater_than: 0 }

end
