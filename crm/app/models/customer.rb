class Customer < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["EmailAddress", "FullName", "Notes", "PhoneNumber", "created_at", "id", "id_value", "updated_at"]
  end
end
