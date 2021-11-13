# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.find_or_create_by(image_list: ImseaApi.populate_images)
user = {
    username: "tester",
    name: "tester",
    email: "tester@foobar.com",
    password: "test",
    zipcode: 20500,
    venmoname: "@testervenmo"
}
User.create(user)