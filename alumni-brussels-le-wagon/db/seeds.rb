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
