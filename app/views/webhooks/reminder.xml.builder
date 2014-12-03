xml.instruct!
xml.Response do
    xml.Gather(:action => @post_to, :numDigits => 1) do
        xml.Say "Hello #{@event.patient_name}, I really really really like ponies. John loves you and hopes you'll take your #{@event.drug_name} today."
        xml.Say "#{@event.message}"
        # xml.Say "Press 2 for reminder. 3 for goodbye
        # "
        xml.Say "On a scale of 0-9, how much pain are you in? 9 is the most pain. 0 is the least amount of pain."
    end
end
