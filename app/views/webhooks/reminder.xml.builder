xml.instruct!
xml.Response do
    xml.Gather(:action => @post_to, :numDigits => 1) do
        xml.Say "Hello #{@event.patient_name}, I really really really like ponies. John loves you and hopes you'll take your #{@event.drug_name} today."
        xml.Say "#{@event.message}"
    end
end
