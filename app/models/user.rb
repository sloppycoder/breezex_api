class User < ApplicationRecord
  def self.from_token_payload(payload)
    user = find_by(user_id: payload['sub'])
    unless user
      user = new
      user.user_id = payload['sub']
      user.save
    end
    user.user_id
  end
end
