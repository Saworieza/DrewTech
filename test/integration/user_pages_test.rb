require 'spec_helper'
=begin
class UserPagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
=end
describe "User pages" do

	subject { page }

	describe "signup page" do
		before { visit signup_path }

		it { should have_content ('Sign up')}
		it { shouuld have_title(full_title('Sign up'))}
	end
end	
