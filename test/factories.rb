FactoryGirl.define do 
	factory :user do 
		
	sequence :email do |n|
		"me#{n}@michaelkulinski.com"
	end
		password "logitech05"
		password_confirmation "logitech05"
	end

	factory :place do 
		name "Coffee Coffee Coffee"
		address "421 W Broadway, Long Beach, CA, 90802"
		description "The coffeeest coffee"
		association :user
	end

end