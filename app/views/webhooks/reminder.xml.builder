xml.instruct!
xml.Response do
  xml.Gather(:action => @post_to, :numDigits => 1) do
    xml.Say "Hello #{@event.patient_name}, Taylor Swift loves you wanted to say: #{@event.message}.", voice: 'alice'
    xml.Pause :length => 1
    xml.Say "She also ask that you take your #{@event.drug_name} today.", voice: 'alice'
    xml.Pause :length => 1
    xml.Say "With your keypad, Taylor wants to know, on a scale of 0-9, how much pain are you in? 9 is the most pain. 0 is no pain.", voice: 'alice'
  end
end