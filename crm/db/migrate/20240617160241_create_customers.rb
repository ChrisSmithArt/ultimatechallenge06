class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :FullName
      t.string :PhoneNumber
      t.string :EmailAddress
      t.text :Notes

      t.timestamps
    end
  end
end
