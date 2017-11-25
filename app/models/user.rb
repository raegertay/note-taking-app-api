class User < ApplicationRecord
  has_many :notes, dependent: :destroy

  validates :name, presence: true
end
