class PurchaseInfo < ActiveRecord::Base

  def self.total_price
    self.sum(:item_price)
  end

  def self.total_purchase
    self.sum(:purchase_count)
  end

end
