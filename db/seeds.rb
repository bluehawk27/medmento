# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = User.create(first_name: "Kevin", last_name: "Chen", email: "yolo@yolo.com")

b = Event.create(
      name: "Take medicine",
      drug_name: "Prozac",
      message: "Love you!",
      patient_number: "111-111-1111",
      secondary_number: "222-222-2222",
      third_number: "333-333-3333",
      start_date: "2014-12-12",
      end_date: "2014-12-20",
      alert_time: "Something"
  )