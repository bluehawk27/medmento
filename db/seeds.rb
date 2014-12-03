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


# Doesn't work
a = ClockworkEvent.create(
      patient_name: "Grandpa",
      drug_name: "Prozac",
      message: "Love you!",
      patient_number: "7034709608",
      frequency_quantity: 90,
      frequency_period_id: 1,
  )

# #  These work
# b = ClockworkEvent.create(
#       patient_name: "Grandpa",
#       drug_name: "Prozac",
#       message: "Love you!",
#       patient_number: "111-111-1111",
#       frequency_quantity: 1,
#       frequency_period_id: 4,
#       at: "16:51"
#   )

# C = ClockworkEvent.create(
#       patient_name: "Grandma",
#       drug_name: "Prozac",
#       message: "Love you!",
#       patient_number: "111-111-1111",
#       frequency_quantity: 1,
#       frequency_period_id: 5,
#       at: "Tuesday 16:52"
#   )