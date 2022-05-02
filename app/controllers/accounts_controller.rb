class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile, :index]

  def profiles
    # all accounts
    @accounts = Account.all
  end

  def index 
    # dashboard
    @posts = Post.active
  end
  
  def profile 
    # user profile
    @posts = @account.posts.active
  end

  def follow_account
    account_id = params[:follow_id]
    if Follow.create!(follower_id: current_account.id, following_id: account_id)
      flash[:success] = "Followed!"
    else
      flash[:danger] = "Unable to follow this user."
    end
    redirect_to dashboard_path
  end 

  private 

  def set_account
    @account = Account.find_by_username(params[:username])
  end
end
