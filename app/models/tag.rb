class Tag < ApplicationRecord
  has_many :item_tag_relations
  has_many :items, through: :item_tag_relations
  validates :tag_name, uniqueness: {case_sensitive: true}, presence: true, length: { maximum: 18 }
end
