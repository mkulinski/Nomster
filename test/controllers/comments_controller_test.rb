require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "comment creation functionality" do
  	
  	user = FactoryGirl.create(:user)
  	sign_in user

  	place = FactoryGirl.create(:place)

    assert_difference 'Comment.count' do
      post :create, {:comment => {
          :message => 'Great Place!',
		  :rating => '1_star',
        }
      }
    end
	assert_redirected_to places_path
    assert_equal 1, user.place.comments.count
  	
  end

end
