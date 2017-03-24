Допустим(/^пользователь с emailом "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
  visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
      sleep 1
	end
end

То(/^увидит уведомление "([^"]*)"$/) do |notification|
    assert page.has_content?(notification)  #has_content?
end
