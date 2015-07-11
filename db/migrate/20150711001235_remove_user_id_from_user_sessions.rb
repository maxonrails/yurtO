class RemoveUserIdFromUserSessions < ActiveRecord::Migration
  def change
    remove_column :user_sessions, :user_id, :string
  end
end
