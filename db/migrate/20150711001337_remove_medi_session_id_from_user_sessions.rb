class RemoveMediSessionIdFromUserSessions < ActiveRecord::Migration
  def change
    remove_column :user_sessions, :medi_session_id, :string
  end
end
