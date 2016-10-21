Given(/^Usuario ingresa a la sala$/) do
  visit "/sala"
end

Then(/^Ve un titulo que dice "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Then(/^Recibe carta 1/) do

  last_response.should have_xpath( "//div[@id=\"cartas-1\"]") do |div|
    div.should have_selector("div", :content => "4")
  end
end

Then(/^Recibe carta 2/) do

  last_response.should have_xpath( "//div[@id=\"cartas-1\"]") do |div|
    div.should have_selector("div", :content => "5")
  end
end

