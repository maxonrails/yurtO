class CreateUserSessions < ActiveRecord::Migration
  def change
    create_table :user_sessions do |t|
      t.string :how_sit
      t.string :before_sit

      t.timestamps null: false
    end
  end
end
