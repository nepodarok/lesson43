Допустим(/^пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
  visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
      sleep 1
	end
end


Если(/^перейдет в магазин, добавив первое блюдо в корзину$/) do
  sleep 2
  visit('/shops/1')
  sleep 2
  click_button("Добавить в корзину")
  sleep 2
end

То(/^клик по "([^"]*)" скроет ссылку на "([^"]*)"$/) do |link_text, check_link|
  sleep 1
  click_link(link_text)
  sleep 1
  assert !page.has_content?(check_link)  #has_content?
end
