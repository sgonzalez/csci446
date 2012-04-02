class Member::UserSessionsController < Member::MemberController
  def destroy
    @user_session = UserSession.find
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to :users, notice: 'Goodbye!' }
      format.json { head :no_content }
    end
  end
end
