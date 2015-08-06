module DealsHelper
  def title
    @response.css("#productdisplayForm > div > div > div.col-left-inner > div > div.hinfo.clearfix > h1").text
  end

  def price_range
    @response.css("#js-priceTips > span:nth-child(2)").text
  end

  def description
    @response.css("#itemDescription > div.description > ul > li:nth-child(1)").text
  end

  def image
    @response.css("#firstBImage > span > img")[0].to_a[1][1]
  end
end
