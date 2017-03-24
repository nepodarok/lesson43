
When(/^залогинен пользователь под email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
  visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
      sleep 1
	end
end

When(/^перейдет в магазин и добавит первое блюдо в корзину$/) do
  visit('/shops/1')
  sleep 1
  click_button("Добавить в корзину")
  sleep 1
end

When(/^клиенет на "([^"]*)" в боковом сайдбаре$/) do |link_text|
  sleep 1
  click_link(link_text)
  sleep 1
end

When(/^откроется страница с заказом и ссылкой на "([^"]*)"$/) do |confirm_text|
  sleep 1
  assert page.has_content?(confirm_text)  #has_content?
  sleep 1
  click_link(confirm_text)
  sleep 1
end

When(/^по клику на Подвтерждение заказа будет видна фраза "([^"]*)"$/) do |notification|
  assert page.has_content?(notification)  #has_content?
  sleep 1
end
