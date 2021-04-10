module AccountsHelper
    def profile_thumbnail(account, field_hash)
        if account.images.any?
            return image_tag(account.images.first, field_hash)
        end
        return image_tag('avatar.jpg', field_hash)
    end

    def get_account_from_conversation conversation
         matched_account_id = conversation.sender_id == current_account.id ? conversation.recipient_id : conversation.sender_id
         return @matches.select{ |account| account.id == matched_account_id }.first
    end
end
