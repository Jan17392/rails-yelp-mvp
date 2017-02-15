class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, :dependent => :delete_all

  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
