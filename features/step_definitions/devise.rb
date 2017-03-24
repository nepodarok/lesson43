When(/^залогинен пользователь по адресу \/admin с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
  visit('/admin')
  sleep 1
  within("#session_new") do
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    click_button 'Login'
    sleep 1
  end
end

When(/^перейдет в админку и кликнет на "([^"]*)" и нажмет на "([^"]*)" и укажет новую цену "([^"]*)"$/) do |menu_link, edit_link, new_price|
  sleep 1
  click_link(menu_link)

  click_link (edit_link)
  sleep 1
  within("#edit_dish") do
    fill_in('Price', with: new_price)
    click_button 'Update Dish'
    sleep 1
  end
end

When(/^после редактирования цены новая цена "([^"]*)" отобразится на фронтенде$/) do |new_price|
  visit('/shops/1')
  assert page.has_content?(new_price)  #has_content?
  sleep 1
end
