10.times do
  physician = Physician.create(
    name: Faker::Name.name,
    specialty: Faker::Cannabis.cannabinoid
  )
  10.times do
    patient = Patient.create(
      name: Faker::Name.name,
      age: rand(18..29),
      phone_number: Faker::PhoneNumber.phone_number
    )

    Appointment.create(
      date: Faker::Date.between(from: 2.days.ago, to: Date.today),
      time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      physician_id: physician.id,
      patient_id: patient.id
    )
  end
end

puts 'Data has been seeded'
