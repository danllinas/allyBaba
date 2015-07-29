class User < ActiveRecord::Base

  def self.scrape
    response = HTTParty.get("http://www.alibaba.com/product-detail/garden-game-bounce-trampoline-park-indoor_1869840410.html")
    dom = Nokogiri::HTML(response.body)
  end

end
