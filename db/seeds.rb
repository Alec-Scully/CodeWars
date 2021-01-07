# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
Faction.destroy_all
CharacterBattle.destroy_all
Battle.destroy_all
User.destroy_all

User.create(email: "master", password_digest: "master")

#factions
fact1 = Faction.create(name: "Republic", description: "Pretty not good", battles_won: 0, battles_lost: 0)
fact2 = Faction.create(name: "CIS", description: "Roger Roger", battles_won: 0, battles_lost: 0)
fact3 = Faction.create(name: "Empire", description: "Unlimited Power/Can't Aim", battles_won: 0, battles_lost: 0)
fact4 = Faction.create(name: "Rebel Alliance", description: "Aren't they just terrorists?", battles_won: 0, battles_lost: 0)
fact5 = Faction.create(name: "Resistance", description: "What a joke of a group", battles_won: 0, battles_lost: 0)
# Faction.create(name: , description: , battles_won: 0, battles_lost: 0)


#characters
ch1 = Character.create(name: "Luke Skywalker",    species: "Human", description: "Son of Anakin",             faction_id: fact4.id, classification: "Force User", status: "Alive", battles_won: 0, battles_lost: 0, user_id: User.first.id)
ch2 = Character.create(name: "Darth Vader",       species: "Human", description: "Killed Anakin",             faction_id: fact3.id, classification: "Force User", status: "Alive" , battles_won: 0, battles_lost: 0, user_id: User.first.id)
ch3 = Character.create(name: "Obi-Wan Kenobi",    species: "Human", description: "Old Ben",                   faction_id: fact1.id, classification: "Force User", status: "Alive" , battles_won: 0, battles_lost: 0, user_id: User.first.id)
ch4 = Character.create(name: "Darth Maul",        species: "Dathomirian", description: "The best character",  faction_id: fact2.id, classification: "Force User", status: "Alive" , battles_won: 0, battles_lost: 0, user_id: User.first.id)
ch5 = Character.create(name: "Padme Amidala",     species: "Human", description: "Died because she was sad",  faction_id: fact1.id, classification: "Soldier", status: "Alive" , battles_won: 0, battles_lost: 0, user_id: User.first.id)
ch6 = Character.create(name: "Jar Jar Binks",     species: "Gungan", description: "The hero we needed",       faction_id: fact1.id, classification: "Scoundrel", status: "Alive" , battles_won: 0, battles_lost: 0, user_id: User.first.id)
ch7 = Character.create(name: "Rey",               species: "Human", description: "-ders of the Lost Ark",     faction_id: fact5.id, classification: "Force User", status: "Alive" , battles_won: 0, battles_lost: 0, user_id: User.first.id)


#battle test
Battle.create(challenger_number: nil, character_number: nil)
