class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :full_name
      t.string :login
      t.string :password
      t.string :role
      t.string :department

      t.timestamps
    end
  end
end
