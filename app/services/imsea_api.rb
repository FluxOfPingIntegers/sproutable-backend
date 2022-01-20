require 'net/http'

class ImseaApi

  def self.populate_images
    url = URI("https://imsea.herokuapp.com/api/1?q=farmersmarket")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    results = JSON.parse(response.body)["results"]

    results.join(" ")
  end

end