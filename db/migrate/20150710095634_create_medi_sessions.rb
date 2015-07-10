class CreateMediSessions < ActiveRecord::Migration
  def change
    create_table :medi_sessions do |t|
      t.boolean :private
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps null: false
    end
  end
end
