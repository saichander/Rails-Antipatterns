# app/models/order.rb
class Order < ActiveRecord::Base
  delegate :to_xml, :to_json, :to_pdf, :to_csv, :to => 'converter'
  def converter
    OrderConverter.new(self)
  end

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

  def self.advanced_search(fields, options = {})
    # ...
  end

  def self.simple_search(terms)
    # ...
  end
end

Class OrderConverter < ActiveRecord::Base

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

