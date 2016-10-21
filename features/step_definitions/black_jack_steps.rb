Given(/^Usuario ingresa a la sala$/) do
  visit "/sala"
end

Then(/^Ve un titulo que dice "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Then(/^Recibe una carta/) do

  last_response.should have_xpath( "//input[@id=\"carta1\"]") do |div|
    div.should_not == ""
  end
end

