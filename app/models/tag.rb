class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["taggings", "tags"]
  end
end
