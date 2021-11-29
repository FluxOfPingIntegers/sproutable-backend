class Location < ApplicationRecord
  validates :name, :description, :address, :zipcode, presence: true
  validates :usda_id, uniqueness: true, if: :usda_id, presence: true
  validates :yelp_id, uniqueness: true, if: :yelp_id, presence: true

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
      zipcode: details["Address"].split(",")[-1],
      hours: details["Schedule"].split(" ")[3...].join(" ").split(";")[0],
      image: Image.random_veggie
    }
    Location.create(record)
  end

  def updateEvents
    event_info = {
      usda_id: self.usda_id,
      yelp_id: self.yelp_id,
      name: self.name,
      description: self.description,
      address: self.address,
      zipcode: self.zipcode,
      hours: self.hours,
      fee: self.fee,
      pass: self.pass,
      date: (self.date_of_next_event.strftime),
      image: self.image
    }

    if Date.today < self.date_of_next_event && self.date_of_next_event.strftime != self.events.last.date
      self.events.delete_all
      event = self.events.build(event_info)
      event.save
    elsif self.events.length == 0
      event = self.events.build(event_info)
      event.save
    end
  end

  def date_of_next_event
    date = Date.parse(self.hours_to_weekday)
    delta = date > Date.today ? 0 : 7
    date + delta
  end

  def hours_to_weekday
    day = self.hours.split(": ")[0]
    case day
      when "Mon"
        "Monday"
      when "Tue"
        "Tuesday"
      when "Wed"
        "Wednesday"
      when "Thu"
        "Thursday"
      when "Fri"
        "Friday"
      when "Sat"
        "Saturday"
      when "Sun"
        "Sunday"
      else
        puts "Invalid Hours Entry for #{self}"
    end
  end


end
