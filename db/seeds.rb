# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Batch_list = [
  [96, Date.parse("2017-09-10"), Date.parse("2017-10-24"), 95, nil, "group-photos/batch-96-min.jpg"],
  [95, Date.parse("2017-10-01"), Date.parse("2017-11-01"), nil, 96, "group-photos/batch-96-min.jpg"]
]

Batch_list.each do |name, date_start, date_end, previous_batch, next_batch, picture_url|
  Batch.create(name: name, date_start: date_start, date_end: date_end, previous_batch: previous_batch, next_batch: next_batch, picture: picture_url)
end

Project_list = [
  ['NoodlePoodl', 'Fun & Fairness in decision making: A tool based on visual AB-testing (also an addictive game 🎮 )', 'Amusant et juste dans la prise de décision: Un outils basé sur le test A/B visuel (c\'est aussi un jeu addictif 🎮)', 'http://www.noodlepoll.io/'],
  ['Chapter', 'Discover the world, one chapter at a time', 'Découvrez le monde, un chapitre à la fois', 'https://www.chapter.website/#home'],
  ['Terms of service;Didn\'t read', '“I have read and agree to the Terms” is the biggest lie on the web. We aim to fix that.', '"J\'ai lu et accepté les Termes" est le plus gros mensong du web. Nous visons à régler ça.', 'https://phoenix.tosdr.org/'],
  ['Photrea', 'Be part of the collection', 'Faites partie de la collection', 'http://www.photrea.com/'],
  ['Chronos', 'Digitalize your restaurant', 'Digitalisez votre restaurant', 'https://www.chronos-app.com/'],
  ['Pilotis', 'Manage registrations and invoices for your organisation', 'Gérer les inscriptions et factures pour votre organisation', 'https://www.pilotis.be/'],
  ['Lokol', 'Drive to store and on-line advertising solutions for brick & mortars and small businesses.', 'Solution pour les publicités en ligne des fondations et petites entreprises.', nil],
]

Project_list.each do |name, description, description_fr, project_url|
  Project.create(name: name, description: description, description_fr: description_fr, project_url: project_url)
end

# Eleve qui manque la photo:
# Yass
Student_list = [
  ['Alexandre', nil, 'https://github.com/VKAlex95', 'http://aafke89.github.io/portfolio/', 5, 'alexandre-min.png', false],
  ['Carmen', nil, 'https://github.com/carmenlongo', 'http://auymaz.github.io/Portfolio/', 5, 'carmen-min.png', false],
  ['Diogo', nil, 'https://github.com/eltigredc', 'http://dimmaaah.github.io/portfolio/', 5, 'diogo-min.png', false],
  ['Theo', nil, 'https://github.com/theowillems', 'http://waltervanwoudenberg.github.io/portfolio/', 4, 'theo-min.png', false],
  ['Sasha', nil, 'https://github.com/sashamanekke', 'http://elyas03.github.io/portfolio/', 1, 'sasha-min.png', false],
  ['Chris', nil, 'https://github.com/piks3l', 'http://milou121.github.io/portfolio/', 3, 'chris-min.png', false],
  ['Hasna', nil, 'https://github.com/quiko', 'http://flehodey.github.io/portfolio/', 6, 'hasna-min.png', false],
  ['Karel', nil, 'https://github.com/KarelVerhaeghe', 'http://geertkeularts.github.io/portfolio/', 2, 'karel-min.png', false],
  ['Remi', nil, 'https://github.com/remidatroa', 'http://ginagoldberg.github.io/Portfolio/', 6, 'remi-min.png', false],
  ['Reginald', nil, 'https://github.com/dewas90', 'http://www.jayvanderyoon.com/', 5, 'reginald-min.png', false],
  ['<3', nil, nil, nil, nil, 'robot-min.jpg', true],
  ['Ke Thien', nil, 'https://github.com/KeThien', 'http://jramon1.github.io/portfolio/', 3, 'ke_thien-min.png', false],
  ['Luc', nil, 'https://github.com/ScrumMaster323', 'http://jurthetauren.github.io/portfolio/', 5, 'luc-min.png', false],
  ['Yoshi', nil, 'https://github.com/Yoshivanroeyen', 'http://jurjenjm.github.io/portfolio/', 2, 'yoshi-min.png', false],
  ['Thomas', nil, 'https://github.com/Sohett', 'http://www.lrjbrual.com/', 5, 'thomas-min.png', false],
  ['Lynn', nil, 'https://github.com/LynnVanderhallen', 'http://merelsteenbrink.github.io/portofolio/', 2, 'lynn-min.png', false],
  ['Maxim', nil, 'https://github.com/MaximPiessen', 'http://merelsteenbrink.github.io/portofolio/', 4, 'maxim-min.png', false],
  ['Philippe', nil, 'https://github.com/filouzzz', 'http://micky0806.github.io/portfolio/', 6, 'philippe-min.png', false],
  ['Pablo', nil, 'https://github.com/pablocm90', 'http://feiko1.github.io/portfolio/', 2, 'pablo-min.png', false],
  ['Pierre', nil, 'https://github.com/pierrecollinet', 'https://nadyaa1.github.io/portfolio/', 4, 'pierre-min.png', false],
  ['Madeline', nil, 'https://github.com/madoleary', 'https://nadyaa1.github.io/portfolio/', 3, 'madeline-min.png', false],
  ['Jun Joseph', nil, 'https://github.com/jjpad', 'https://nadyaa1.github.io/portfolio/', 1, 'jun_joseph-min.png', false],
  ['Louise', nil, 'https://github.com/louisepicot', 'https://nadyaa1.github.io/portfolio/', 1, 'louise-min.png', false],
  ['Batch 96', nil, nil, 'https://www.lewagon.com/fr', nil, 'lewagon-min.png', true]
]

Student_list.each do |first_name, last_name, github, portfolio, project, picture, fake|
  Student.create(first_name: first_name, last_name: last_name, github_url: github, portfolio_url: portfolio, batch_id: 1, project_id: project, picture: picture, fake: fake)
end

Meta_list = [
  ['batch', nil, 1],
  ['fun', 1, 2],
  ['books', 2, 3],
  ['law', 3, 4],
  ['photo', 4, 5],
  ['restaurants', 5, 6],
  ['organisation', 6, 7],
  ['ads', 7, 8]
]

Meta_list.each do |name, project_id, meta_tag_id|
  MetaTag.create(name: name)
  MetaTagsProject.create(project_id: project_id, meta_tag_id: meta_tag_id)
end

# All batches have this meta tag
Batch.all.each do |batch|
  BatchesMetaTag.create(batch_id: batch.id, meta_tag_id: 1)
end


