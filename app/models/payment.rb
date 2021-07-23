class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle
  #validates :card_information, numericality: {greater_than 0, less_than: 8}
  #validates :exp_date, numericality: {greater_than 0, less_than: 4}
  #validates :security_code, numericality: {greater_than 0, less_than: 3}
end
