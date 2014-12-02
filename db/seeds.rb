# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = User.create(first_name: "Kevin", last_name: "Chen", email: "yolo@yolo.com")

[:seconds, :minutes, :hour, :day, :week, :month].each do |period|
  FrequencyPeriod.create(name: period)
end

b = ClockworkEvent.create(
      patient_name: "Grandpa",
      drug_name: "Prozac",
      message: "Love you!",
      patient_number: "111-111-1111",
      frequency_quantity: 1,
      frequency_period_id: 2,
      at: "11:12"
  )