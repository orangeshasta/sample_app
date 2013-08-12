require 'spec_helper'

describe UsersController do
  describe "admin user" do
    let(:admin) { FactoryGirl.create(:admin) }

    it "should not be able to delete himself" do
      sign_in admin
      expect { delete :destroy, :id => admin.id }.to_not change(User, :count)
    end
  end
end