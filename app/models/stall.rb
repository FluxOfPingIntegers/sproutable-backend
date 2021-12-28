class Stall < ApplicationRecord

  belongs_to :event
  belongs_to :vendor
  has_many :items

  def self.process_form(form_params)
    event_id_list = form_params[:event_id_list]
    vendor_id = form_params[:vendor_id]
    event_id_list.each do |event_id|
      event = Event.find(event_id)
      self.find_or_create_by(event_id: event_id, vendor_id: vendor_id, date: event.date)
    end
  end

end
