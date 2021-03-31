class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :account_1
      t.integer :account_2


      t.timestamps
    end
  end
end
