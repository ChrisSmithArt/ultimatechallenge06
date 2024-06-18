class Customer < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["EmailAddress", "FullName", "Notes", "PhoneNumber", "created_at", "id", "id_value", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
  has_one_attached :image

  validates :FullName, presence: true
  validates :PhoneNumber, presence: true
  validates :EmailAddress, presence: true
end
