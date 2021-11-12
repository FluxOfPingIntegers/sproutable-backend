class Location < ApplicationRecord

  has_many :events

  def self.usda_search_record_exists?(record)
    usda_id = record["id"].to_i
    !!self.find_by_usda_id(usda_id)
  end


end
