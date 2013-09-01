# encoding: utf-8
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
    if account.blank?
      create_account!({name: "#{self.name}"'s account'})
      account.create_outcome!
      account.save!
      data = [
        ["הוצאות משפחתיות", ["שכר דירה", "ארנונה ומים", "חשמל", "גז", "ועד בית", "קניות בסופר", "אינטרנט", "כבלים","טלפון", "פלאפון","חיסכון", "הוצאות נוספות"]],
        ['השכלה גבוהה', ["שכר לימוד", "הוצאות נוספות"]],
        ['תחבורה', ["דלק", "טיפולים + טסט", "תחבורה ציבורית","הוצאות נוספות"]],
        ['ביטוחים', ["ביטוח דירה", "ביטוח חיים", "ביטוח רפואי", "ביטוח רכב", "הוצאות נוספות"]],
        ['ילדים', ["חוגים", "ביגוד", "בית ספר וגנים", "דמי כיס", "מטפלת / בייביסיטר", "הוצאות נוספות"]],
        ['בילויים ופנאי', ["מסעדות", "נופש", "ספורט", "תיאטרון", "קולנוע", "מספרה", "קוסמטיקה וטיפוח", "מתנות לאירועים", "קניות", "הוצאות נוספות"]]
      ]
      data.each do |d|
        new_category = account.outcome.outcome_categories.create!({name: d[0]})
        d[1].each do |value|
          new_category.params.create!({name: value, outcome_category_id: new_category.id})
        end
      end
      account.members.create!({name: name})
      save!
      ["מחשבים", "רכב", "אופנה", "מסעדות", "הנעלה", "טיפוח", "חשמל ואלקטרוניקה", "לימודים", "ספורט", "מסעדות ובתי קפה", "מתנות", "צימרים", "ריהוט", "תכשיטים", "תרבות פנאי ובילויים", "קוסמטיקה ועיצוב שיער", "צעצועים ומשחקים", "תינוקות", "חופשה", "בעלי חיים", "אופטיקה"].each do |k|
        account.keywords.create!({name: k})
      end
    end
  end

end
