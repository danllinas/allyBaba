module UsersHelper
require 'json'
  #
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
    @response.css("#J-rich-text-description").to_s.html_safe
  end

end
