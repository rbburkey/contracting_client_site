class UsersController < ApplicationController


  def new
  @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.inquiry_email(@user).deliver_now
        UserMailer.inquiry_email_response(@user).deliver_now

        format.html { redirect_to(root_path, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :message)
  end

end
