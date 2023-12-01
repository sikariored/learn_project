class Account < ApplicationRecord
  has_and_belongs_to_many :roles


  validates :login, presence: true, length: { minimum: 3 }
  def masked_password
    '*' * password.length
  end
end
