xml.instruct!
xml.Response do
    xml.Gather(:action => @post_to, :numDigits => 1) do
        xml.Say "Hello #{@event.patient_name} I really really really like ponies."
    end
end
