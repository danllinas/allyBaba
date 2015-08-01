class Deal < ActiveRecord::Base

  def self.scrape
    response = HTTParty.get("http://www.alibaba.com/product-detail/Define-Major-Minor-Value-cc2541-iBeacon_60216539191.html?spm=a...")
    dom = Nokogiri::HTML(response.body)
  end

end
