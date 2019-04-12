class Product < ApplicationRecord
  enum selling: [:yes, :no]
end
