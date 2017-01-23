class User < ApplicationRecord
  def from_token_payload(payload)
    user = find_or_create_by(user_id: payload['sub'])
    user
  end
end
