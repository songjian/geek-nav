class Link < ApplicationRecord
  belongs_to :category
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "title", "updated_at", "url"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category", "taggings", "tags"]
  end
end
