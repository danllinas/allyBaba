class Deal < ActiveRecord::Base

  def self.scrape
    response = HTTParty.get("http://www.alibaba.com/product-detail/Vewell-84-inch-Stand-TV_60275078333.html")
    dom = Nokogiri::HTML(response.body)
  end

end
