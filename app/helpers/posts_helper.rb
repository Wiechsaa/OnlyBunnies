module PostsHelper
  # This feature may cause problems with N+1 queries
  # But this application is just a simple MVP
  # In the long run, it has to be written from scratch
  def post_liked_by_user? post_id
    Like.where(post_id: post_id, account_id: current_account.id).any?
  end
end