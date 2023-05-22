class Civilisation < ApplicationRecord
	has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def self.ransackable_attributes(auth_object = nil)
    		["Subtitle", "Title", "description"]
  	end
end
