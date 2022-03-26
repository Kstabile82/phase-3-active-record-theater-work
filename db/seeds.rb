Audition.destroy_all
Role.destroy_all

puts "Creating Auditions"
Audition.create(actor: "Dexter", location: "Long Beach", phone: 1234567, hired: true, role_id: 1)
Audition.create(actor: "Dolly", location: "Long Beach", phone: 1256099, hired: true, role_id: 2)
Audition.create(actor: "Roxy", location: "Long Beach", phone: 1345567, hired: true, role_id: 3)

puts "Creating Roles"
Role.create(character_name: "King")
Role.create(character_name: "Queen")
Role.create(character_name: "Countess")

puts "Seeding done!!!"