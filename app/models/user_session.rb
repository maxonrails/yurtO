class UserSession < ActiveRecord::Base
    belongs_to :user
    belongs_to :medi_session
end
