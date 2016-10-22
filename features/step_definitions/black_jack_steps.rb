Given(/^Usuario ingresa a la sala$/) do
  visit "/sala"
end

Then(/^Ve un titulo que dice "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Then(/^Recibe cartas el jugador 1/) do

  last_response.should have_xpath( "//div[@id=\"cartas-1\"]") do |div|
    div.should have_selector("div")
  end
end

Then(/^Recibe cartas el jugador 2/) do

  last_response.should have_xpath( "//div[@id=\"cartas-2\"]") do |div|
    div.should have_selector("div")
  end
end

Then(/^Ve el boton "(.*?)"$/) do |titulo|
    last_response.should have_xpath( "//input[@id=\"#{titulo}\"]") do |input|
    
    input.should be
  end
end

Then(/^Aprieta el boton "(.*?)"$/) do |value|
  click_button(value)
end

Then(/^Ve la carta (\d+)$/) do |numero_carta|
  	last_response.should have_xpath( "//div[@id=\"carta-#{numero_carta}\"]") do |carta|
        carta.should be
	end
end


