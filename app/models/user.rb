class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :date_of_birth, :name, :profession, :gender
  # attr_accessible :title, :body

  belongs_to :account, class_name: 'Account'

  after_create :create_member_and_account

  def create_member_and_account
    create_account!({name: "#{self.name}"'s account'})
    account.members.create!({name: name})
    account.create_outcome
    save!
  end

end
