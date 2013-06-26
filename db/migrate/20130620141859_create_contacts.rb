class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :phonenumber

      t.timestamps
    end
  end
end
