# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({
  email: "demo@byb.com",
  name: "Nitzan",
  password: '12345678',
  password_confirmation: '12345678'
})

["מחשבים", "רכב", "אופנה", "מסעדות", "הנעלה", "טיפוח", "חשמל ואלקטרוניקה", "לימודים", "ספורט", "מסעדות ובתי קפה", "מתנות", "צימרים", "ריהוט", "תכשיטים", "תרבות פנאי ובילויים", "קוסמטיקה ועיצוב שיער", "צעצועים ומשחקים", "תינוקות", "חופשה", "בעלי חיים", "אופטיקה"].each do |k|
  Account.all.each do |account|
    account.keywords.create({name: k})
  end
end