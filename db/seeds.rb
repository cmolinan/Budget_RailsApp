# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user1 = User.create(name: 'Tom Hanks', email: 'tom@m.com', password: '666666')
@user2 = User.create(name: 'Mark Hamilton', email: 'mark@m.com', password: '666666')

@group1= Group.create(user_id: @user1.id,  name: 'Education',  icon: 'education.png')
@group2= Group.create(user_id: @user1.id,  name: 'Health',  icon: 'health.png')
@group3= Group.create(user_id: @user2.id,  name: 'House',  icon: 'house.png')

@transaction1 = Entity.create(user_id: @user1.id,  name: 'College',  amount: 360.80, group_id: @group1.id)
@transaction2 = Entity.create(user_id: @user1.id,  name: 'Physics Books',  amount: 140, group_id: @group1.id)
@transaction3 = Entity.create(user_id: @user1.id,  name: 'Hospital',  amount: 89.10, group_id: @group2.id)
@transaction4 = Entity.create(user_id: @user2.id,  name: 'Painting all',  amount: 400.50, group_id: @group3.id)
@transaction5 = Entity.create(user_id: @user2.id,  name: 'Furniture',  amount: 900, group_id: @group3.id)
