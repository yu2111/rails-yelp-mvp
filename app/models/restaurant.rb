class Restaurant < ApplicationRecord
  # A restaurant must have a name, an address and a category.
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :delete_all
  CATEGORY = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :category, presence: true, allow_blank: false
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
