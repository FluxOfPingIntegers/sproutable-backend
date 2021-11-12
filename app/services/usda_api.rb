require 'net/http'

class UsdaApi

  def self.zip_search(zip_code)
    url = URI("https://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=#{zip_code}")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    results = JSON.parse(response.body)["results"]
  end

  def self.usda_id_search(usda_id)
    url = URI("https://search.ams.usda.gov/farmersmarkets/v1/data.svc/mktDetail?id=#{usda_id}")
  end


end