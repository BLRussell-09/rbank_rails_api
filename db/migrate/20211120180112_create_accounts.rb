class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :user
      t.decimal :balance, precision: 8, scale: 2
      t.date :close_date
      t.string :account_type

      t.timestamps
    end
  end
end
