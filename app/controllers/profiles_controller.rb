class ProfilesController < ApplicationController
  def show
  	# Comment. Variables passed into controller methods are done so using something called the "params hash"
  	@user = User.find_by_profile_name(params[:id])
  	if @user
  		@statuses = @user.statuses.all
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end
end