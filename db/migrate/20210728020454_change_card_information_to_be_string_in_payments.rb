class ChangeCardInformationToBeStringInPayments < ActiveRecord::Migration[6.1]
  def change
    change_column :payments, :card_information, :string
  end
end
