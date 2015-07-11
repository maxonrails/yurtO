class AddMediSessionToUserSessions < ActiveRecord::Migration
  def change
    add_reference :user_sessions, :medi_session, index: true, foreign_key: true
  end
end
