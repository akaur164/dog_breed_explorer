require "csv"

Review.destroy_all
BreedTemperament.destroy_all
Temperament.destroy_all
Breed.destroy_all
Group.destroy_all

csv_path = Rails.root.join("db", "data", "akc-data-latest.csv")

CSV.foreach(csv_path, headers: true) do |row|
  group = Group.find_or_create_by!(name: row["group"])

  breed = Breed.create!(
    name: row[0],
    description: row["description"],
    popularity: row["popularity"].presence&.to_i,
    min_height: row["min_height"],
    max_height: row["max_height"],
    min_weight: row["min_weight"],
    max_weight: row["max_weight"],
    min_expectancy: row["min_expectancy"],
    max_expectancy: row["max_expectancy"],
    grooming_category: row["grooming_frequency_category"],
    shedding_category: row["shedding_category"],
    energy_category: row["energy_level_category"],
    trainability_category: row["trainability_category"],
    demeanor_category: row["demeanor_category"],
    group: group
  )

  row["temperament"].to_s.split(",").each do |trait|
    temperament = Temperament.find_or_create_by!(name: trait.strip)
    BreedTemperament.create!(breed: breed, temperament: temperament)
  end

  2.times do |i|
    Review.create!(
      reviewer_name: "Reviewer #{i + 1}",
      rating: rand(1..5),
      comment: "This breed has interesting characteristics and would be suitable for many dog lovers.",
      breed: breed
    )
  end
end

puts "Groups: #{Group.count}"
puts "Breeds: #{Breed.count}"
puts "Temperaments: #{Temperament.count}"
puts "BreedTemperaments: #{BreedTemperament.count}"
puts "Reviews: #{Review.count}"