class Location < ApplicationRecord

  has_many :events

  def self.usda_search_record_exists?(result)
    usda_id = result["id"].to_i
    !!self.find_by_usda_id(usda_id)
  end

  def self.create_from_usda_api(id_and_name, details)
    record = {
      usda_id: id_and_name["id"].to_i,
      name: id_and_name["marketname"].split(" ")[1...].join(" "),
      description: details["Products"],
      address: details["Address"].split(",")[0],
      zipcode: details["Address"].split(",")[-1].to_i,
      hours: details["Schedule"].split(" ")[3...].join(" ").split(";")[0]
    }
    (!!Location.new(record).valid? ? Location.create(record) : false)
  end


end
