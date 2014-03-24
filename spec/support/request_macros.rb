module RequestMacros
#  def login_admin
#    before(:each) do
#      @request.env["devise.mapping"] = Devise.mappings[:admin]
#      admin = FactoryGirl.create(:admin)
#      sign_in :user, admin # sign_in(scope, resource)
#    end
#  end
  def login_user
    before(:each) do
      @user ||= FactoryGirl.create(:user)
#      user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
       post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
    end
  end
end
