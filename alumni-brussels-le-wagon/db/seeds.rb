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

Student_list = [
  ['Alexandre', nil, nil, 'http://aafke89.github.io/portfolio/', nil, 'alexandre.png', false],
  ['Carmen', nil, nil, 'http://auymaz.github.io/Portfolio/', nil, 'carmen.png', false],
  ['Diogo', nil, nil, 'http://dimmaaah.github.io/portfolio/', nil, 'diogo.png', false],
  ['Theo', nil, nil, 'http://waltervanwoudenberg.github.io/portfolio/', nil, 'theo.png', false],
  ['Sasha', nil, nil, 'http://elyas03.github.io/portfolio/', nil, 'sasha.png', false],
  ['Chris', nil, nil, 'http://milou121.github.io/portfolio/', nil, 'chris.png', false],
  ['Hasna', nil, nil, 'http://flehodey.github.io/portfolio/', nil, 'hasna.png', false],
  ['Karel', nil, nil, 'http://geertkeularts.github.io/portfolio/', nil, 'karel.png', false],
  ['Remi', nil, nil, 'http://ginagoldberg.github.io/Portfolio/', nil, 'remi.png', false],
  ['Reginald', nil, nil, 'http://www.jayvanderyoon.com/', nil, 'reginald.png', false],
  ['<3', nil, nil, nil, nil, 'robot.jpg', true],
  ['Ke Thien', nil, nil, 'http://jramon1.github.io/portfolio/', nil, 'ke_thien.png', false],
  ['Luc', nil, nil, 'http://jurthetauren.github.io/portfolio/', nil, 'luc.png', false],
  ['Yoshi', nil, nil, 'http://jurjenjm.github.io/portfolio/', nil, 'yoshi.png', false],
  ['Thomas', nil, nil, 'http://www.lrjbrual.com/', nil, 'thomas.png', false],
  ['Lynn', nil, nil, 'http://merelsteenbrink.github.io/portofolio/', nil, 'lynn.png', false],
  ['Maxim', nil, nil, 'http://merelsteenbrink.github.io/portofolio/', nil, 'maxim.png', false],
  ['Philippe', nil, nil, 'http://micky0806.github.io/portfolio/', nil, 'philippe.png', false],
  ['Pablo', nil, nil, 'http://feiko1.github.io/portfolio/', nil, 'pablo.png', false],
  ['Pierre', nil, nil, 'https://nadyaa1.github.io/portfolio/', nil, 'pierre.png', false],
  ['Madeline', nil, nil, 'https://nadyaa1.github.io/portfolio/', nil, 'madeline.png', false],
  ['Jun Joseph', nil, nil, 'https://nadyaa1.github.io/portfolio/', nil, 'jun_joseph.png', false],
  ['Louise', nil, nil, 'https://nadyaa1.github.io/portfolio/', nil, 'louise.png', false],
  ['Batch 96', nil, nil, 'https://www.lewagon.com/fr', nil, 'lewagon.png', true]
]

Student_list.each do |first_name, last_name, github, portfolio, project, picture, fake|
  Student.create(first_name: first_name, last_name: last_name, github_url: github, portfolio_url: portfolio, batch_id: 1, project_id: project, picture: picture, fake: fake)
end
