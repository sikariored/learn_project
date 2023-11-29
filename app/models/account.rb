class Account < ApplicationRecord
  validates :login, presence: true, length: {minimum: 3}
end
