xml.instruct!
xml.Response do
    xml.Say "Invalid pain rating."
    xml.Redirect @redirect_to
end
