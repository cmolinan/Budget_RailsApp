class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :entities, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end
