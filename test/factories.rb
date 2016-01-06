FactoryGirl.define do 
	factory :user do 
		email "me@michaelkulinski.com"
		password "logitech05"
		password_confirmation "logitech05"
	end

	factory :place do 
		name "Coffee Coffee Coffee"
		address "421 W Broadway, Long Beach, CA, 90802"
		description "The coffeeest coffee"
	end

end