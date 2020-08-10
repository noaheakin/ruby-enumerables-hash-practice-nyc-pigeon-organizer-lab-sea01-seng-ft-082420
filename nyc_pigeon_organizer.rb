def nyc_pigeon_organizer (pigeon_data)
  new_data = nyc_pigeon_organizer.each_with_object ({}) do |(key, value), in_progress|
    value.each do |inner_key, names|
      names.each do |element|
        if !in_progress[element]
          in_progress[element] = {}
        end
        if !in_progress[element][key]
          in_progressp[element][key] = []
        end
        in_progress[element][key] << inner_key.to_s
      end
    end
  end
  new_data
end
