class RecreateUsers < ActiveRecord::Migration[6.1]
  def up
    create_table :users, force: true do |t|
      t.string :first_name, limit: 256
      t.string :last_name, limit: 256
      t.string :email, limit: 256
      t.timestamps
    end
  end
  def down
  end
end
