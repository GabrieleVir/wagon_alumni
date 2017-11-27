# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Batch_list = [
  [96, Date.parse("2016-04-01"), Date.parse("2016-06-01"), nil, nil, "group-photos/batch-96.jpg"]
]

Batch_list.each do |name, date_start, date_end, previous_batch, next_batch, picture_url|
  Batch.create(name: name, date_start: date_start, date_end: date_end, previous_batch: previous_batch, next_batch: next_batch, picture: picture_url)
end

# Eleve qui manque la photo:
# Yass
Student_list = [
  ['Alexandre', nil, 'https://github.com/VKAlex95', 'http://aafke89.github.io/portfolio/', nil, 'alexandre.png', false],
  ['Carmen', nil, 'https://github.com/carmenlongo', 'http://auymaz.github.io/Portfolio/', nil, 'carmen.png', false],
  ['Diogo', nil, 'https://github.com/eltigredc', 'http://dimmaaah.github.io/portfolio/', nil, 'diogo.png', false],
  ['Theo', nil, 'https://github.com/theowillems', 'http://waltervanwoudenberg.github.io/portfolio/', nil, 'theo.png', false],
  ['Sasha', nil, 'https://github.com/sashamanekke', 'http://elyas03.github.io/portfolio/', nil, 'sasha.png', false],
  ['Chris', nil, 'https://github.com/piks3l', 'http://milou121.github.io/portfolio/', nil, 'chris.png', false],
  ['Hasna', nil, 'https://github.com/quiko', 'http://flehodey.github.io/portfolio/', nil, 'hasna.png', false],
  ['Karel', nil, 'https://github.com/KarelVerhaeghe', 'http://geertkeularts.github.io/portfolio/', nil, 'karel.png', false],
  ['Remi', nil, 'https://github.com/remidatroa', 'http://ginagoldberg.github.io/Portfolio/', nil, 'remi.png', false],
  ['Reginald', nil, 'https://github.com/dewas90', 'http://www.jayvanderyoon.com/', nil, 'reginald.png', false],
  ['<3', nil, nil, nil, nil, 'robot.jpg', true],
  ['Ke Thien', nil, 'https://github.com/KeThien', 'http://jramon1.github.io/portfolio/', nil, 'ke_thien.png', false],
  ['Luc', nil, 'https://github.com/ScrumMaster323', 'http://jurthetauren.github.io/portfolio/', nil, 'luc.png', false],
  ['Yoshi', nil, 'https://github.com/Yoshivanroeyen', 'http://jurjenjm.github.io/portfolio/', nil, 'yoshi.png', false],
  ['Thomas', nil, 'https://github.com/Sohett', 'http://www.lrjbrual.com/', nil, 'thomas.png', false],
  ['Lynn', nil, 'https://github.com/LynnVanderhallen', 'http://merelsteenbrink.github.io/portofolio/', nil, 'lynn.png', false],
  ['Maxim', nil, 'https://github.com/MaximPiessen', 'http://merelsteenbrink.github.io/portofolio/', nil, 'maxim.png', false],
  ['Philippe', nil, 'https://github.com/filouzzz', 'http://micky0806.github.io/portfolio/', nil, 'philippe.png', false],
  ['Pablo', nil, 'https://github.com/pablocm90', 'http://feiko1.github.io/portfolio/', nil, 'pablo.png', false],
  ['Pierre', nil, 'https://github.com/pierrecollinet', 'https://nadyaa1.github.io/portfolio/', nil, 'pierre.png', false],
  ['Madeline', nil, 'https://github.com/madoleary', 'https://nadyaa1.github.io/portfolio/', nil, 'madeline.png', false],
  ['Jun Joseph', nil, 'https://github.com/jjpad', 'https://nadyaa1.github.io/portfolio/', nil, 'jun_joseph.png', false],
  ['Louise', nil, 'https://github.com/louisepicot', 'https://nadyaa1.github.io/portfolio/', nil, 'louise.png', false],
  ['Batch 96', nil, nil, 'https://www.lewagon.com/fr', nil, 'lewagon.png', true]
]

Student_list.each do |first_name, last_name, github, portfolio, project, picture, fake|
  Student.create(first_name: first_name, last_name: last_name, github_url: github, portfolio_url: portfolio, batch_id: 1, project_id: project, picture: picture, fake: fake)
end
# Remi's project not in this list
Project_list = [
  ['NoodlePoodl', 'Fun & Fairness in decision making: A tool based on visual AB-testing (also an addictive game 🎮 )', 'Amusant et juste dans la prise de décision: Un outils basé sur le test A/B visuel (c\'est aussi un jeu addictif 🎮)', 'http://www.noodlepoll.io/'],
  ['Chapter', 'Discover the world, one chapter at a time', 'Découvrez le monde, un chapitre à la fois', 'https://www.chapter.website/#home'],
  ['Terms of service;Didn\'t read', '“I have read and agree to the Terms” is the biggest lie on the web. We aim to fix that.', '"J\'ai lu et accepté les Termes" est le plus gros mensong du web. Nous visons à régler ça.', 'https://phoenix.tosdr.org/'],
  ['Photrea', 'Be part of the collection', 'Faites partie de la collection', 'http://www.photrea.com/'],
  ['Chronos', 'Digitalize your restaurant', 'Digitalisez votre restaurant', 'https://www.chronos-app.com/'],
  ['Pilotis', 'Manage registrations and invoices for your organisation', 'Gérer les inscriptions et factures pour votre organisation', 'https://www.pilotis.be/'],
]

Project_list.each do |name, description, description_fr, project_url|
  Project.create(name: name, description: description, description_fr: description_fr, project_url: project_url)
end
