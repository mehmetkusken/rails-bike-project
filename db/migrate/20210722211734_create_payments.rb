class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bicycle, null: false, foreign_key: true
      t.integer :card_information
      t.integer :exp_date
      t.integer :security_code

      t.timestamps
    end
  end
end
