class Location < ApplicationRecord

  has_many :events

  def self.usda_search_record_exists?(result)
    usda_id = result["id"].to_i
    !!self.find_by_usda_id(usda_id)
  end

  def self.create_from_usda_api(id_and_name, details)
    usda_id = id_and_name["id"].to_i
    name = 
    address = details["Address"].split(",")[0]
    zipcode = details["Address"].split(",")[-1]
    byebug
  end


end
