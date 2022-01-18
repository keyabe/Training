# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
#  ...
Product.create(title: "Programming Ruby 1.9",
    description:
          %{<P>
              Ruby is the fastest growing and most exciting dynamic language
              out there. If you need to get working programs delivered fast,
              you should add Ruby to your toolbox.
            </P>},
    image_url: 'ruby.jpg',
    price: 49.95)

Product.create(title: "Coffee Spring",
    description:
              %{<P>
                  Ruby is the fastest growing and most exciting dynamic language
                  out there. If you need to get working programs delivered fast,
                  you should add Ruby to your toolbox.
                </P>},
        image_url: 'coffee.jpg',
        price: 30.50)

Product.create(title: "Rails Test",
    description:
      %{<P>
          Ruby is the fastest growing and most exciting dynamic language
          out there. If you need to get working programs delivered fast,
          you should add Ruby to your toolbox.
          </P>},
    image_url: 'railstest.jpg',
    price: 35)
# ...
