class Conversation < ApplicationRecord
    has_many :messages, dependent: :destroy
    accepts_nested_attributes_for :messages, allow_destroy: true

    validates_presence_of :sender_id, :recipient_id
    validates_uniqueness_of :sender_id, scope: :recipient_id

    scope :between, -> (sender, recipient) {
        where("(sender_id = ? AND recipient_id = ?) OR (sender_id = ? AND recipient_id = ?)",
        sender, recipient, recipient, sender)
    }

end
