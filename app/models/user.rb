class User < ApplicationRecord
  def self.from_token_payload payload
    user = self.find_or_create_by(user_id: payload['sub'])
    user
  end
end
