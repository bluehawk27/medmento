a = User.create(first_name: "Kevin", last_name: "Chen", email: "yolo@yolo.com")

[:seconds, :minutes, :hour, :day, :week, :month].each do |period|
  FrequencyPeriod.create(name: period)
end


# Doesn't work
ClockworkEvent.create(
      patient_name: "Grandma",
      drug_name: "Claritin",
      message: "Hate you",
      patient_number: "7034709608",
      frequency_quantity: 90,
      frequency_period_id: 1,
  )

t = 9
3.times do
  PainRating.create(rating: t, clockwork_event_id: 2)
  t -= 1
end

PainRating.where(clockwork_event_id: 2).each_with_index do |pain_rating, index|
    pain_rating.update(updated_at: "#{DateTime.now + 10 + index}")
end