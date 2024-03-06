namespace :create_json do
  task start: :environment do
    content = {}
    (0..10_000).each_slice(1000) { |slice| content["test_#{slice}"] = slice }
    data = (0..1000).map { |value| { name: "name#{value}", content: content } }

    JsonbTest.create!(data)
    JsonTest.create!(data)
    puts "Done !!! finish"
  end
end
