When(/^залогинен пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
	visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)

  	fill_in('Password', with: password)
  	click_button 'Log in'
      sleep 3
	end

end

When(/^создаст продукт с данным:$/) do |table|
  sleep 2
  visit('/shops/1')
  sleep 2
  click_button ("Добавить в корзину")
  sleep 8
  #  do
  #   sleep 15
  # end
  # table is a Cucumber::MultilineArgument::DataTable
  
end

When(/^продукт "([^"]*)" видно в списке продуктов$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
