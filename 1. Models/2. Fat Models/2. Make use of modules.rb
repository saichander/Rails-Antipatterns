# app/models/order.rb
class Order < ActiveRecord::Base
  extend FindOrders
  extend SearchOrders
  include OrderConversion
end
module FindOrders
  def self.find_purchased
    # ...
  end

  def self.find_waiting_for_review
    # ...
  end

  def self.find_waiting_for_sign_off
    # ...
  end

  def self.find_waiting_for_sign_off
    # ...
  end
end

module SearchOrders
  def self.advanced_search(fields, options = {})
    # ...
  end

  def self.simple_search(terms)
    # ...
  end
end

module OrderConversion
  def to_xml
    # ...
  end

  def to_json
    # ...
  end

  def to_csv
    # ...
  end

  def to_pdf
    # ...
  end

end

