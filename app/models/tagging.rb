class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :link

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "link_id", "tag_id", "updated_at"]
  end
end
