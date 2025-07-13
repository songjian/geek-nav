class Category < ApplicationRecord
  has_many :links, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "position", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["links"]
  end
end
