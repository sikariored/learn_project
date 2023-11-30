class Account < ApplicationRecord
  validates :login, presence: true, length: {minimum: 3}
  def masked_password
    '*' * password.length
  end
end
