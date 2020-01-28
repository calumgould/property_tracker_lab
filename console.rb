require('pry')
require_relative('models/property')

# PropertyTracker.delete_all()

flat1 = PropertyTracker.new({
  'address' => '20 Lothian Road',
  'value' => '250000',
  'number_of_bedrooms' => '2',
  'year_built' => '1890'
  })
flat1.save()

flat2 = PropertyTracker.new({
  'address' => '39 Castle Terrace',
  'value' => '300000',
  'number_of_bedrooms' => '3',
  'year_built' => '1880'
  })
flat2.save()

binding.pry
nil
