def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |k, v|
    v.each do |name|
      pigeon_list[name] =  {}
    end
  end
  data.each do |key, value|
    value.each do |k, v|
      pigeon_list.each do |name, hash|
        if v.include?(name)
          pigeon_list[name][key] ||= []
          pigeon_list[name][key] << k.to_s
        end
      end
    end
  end
  pigeon_list
end



d ={
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

puts nyc_pigeon_organizer(d)
