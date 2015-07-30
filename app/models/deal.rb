class Deal < ActiveRecord::Base

  def self.scrape
    response = HTTParty.get("http://www.alibaba.com/product-detail/2015-latest-designer-ladies-padded-jacket_60220234681.html")
    dom = Nokogiri::HTML(response.body)
  end

end
