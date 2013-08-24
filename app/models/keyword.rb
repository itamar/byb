class Keyword < ActiveRecord::Base
  attr_accessible :account_id, :name, :active
  belongs_to :account
end
