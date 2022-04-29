class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]

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

  private 

  def set_account
    @account = Account.find_by_username(params[:username])
  end
end
