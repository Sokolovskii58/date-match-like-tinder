class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.references :sender, null: false, references: :account
      t.references :recipient, null: false, references: :account

      t.timestamps
    end
  end
end
