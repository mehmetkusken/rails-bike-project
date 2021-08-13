class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle

  validates :card_information, length: { in: 19..19 }
  validates :exp_date, length: { in: 4..4 }
  validates :security_code, length: { in: 3..3}


end
