FactoryGirl.define do
  factory (:dog) do
    name('Spot')
    breed('German Shepard')
    age('9')
  end
  factory(:cat) do
    name('Chuck Norris')
    breed('Bora Bora.')
    age('5')
  end
end
