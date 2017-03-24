When(/^залогинен пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
	visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
      sleep 3
	end

end

Если(/^перейдет в магазин и добавит первое блюдо ев корзину$/) do
  sleep 2
  visit('/shops/1')
  sleep 2
  click_button("Добавить в корзину")
  sleep 2
end

То(/^ссылка "([^"]*)" видна в боковом сайдбаре$/) do |link_text|
  find_link(link_text).visible?
end
