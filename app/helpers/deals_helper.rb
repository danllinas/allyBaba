module DealsHelper
  def title
    @response.css("#J-ls-grid-action > div.action-main > div > div.ls-icon.ls-brief > h1").text
  end

  def low_price
    @response.css("#J-fob-text > td > span.J-brief-info-val > span:nth-child(2)").text
  end

  def high_price
    @response.css("#J-fob-text > td > span.J-brief-info-val > span:nth-child(3)").text
  end

  def description
    @response.css("#J-rich-text-description").text.to_s.split("").join.truncate_words(50)
  end

  # def image
  #   @response.css("#J-image-icontent > div > a > img")[0].to_a[1][1]
  # end

end
