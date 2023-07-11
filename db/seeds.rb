# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Admin.create!(
   email: 'maho@hoge.com',
   password: 'testmaho',
)

Tag.create([
   { name: 'サラダ'},
   { name: 'ごはんもの'},
   { name: 'グラタン・ドリア'},
   { name: 'パスタ'},
   { name: '漬物・佃煮'},
   { name: '卵料理'},
   { name: '定番おかず'},
   { name: 'おつまみ・小鉢'},
   { name: '揚げ物'},
   { name: '汁物・スープ'},
   { name: '炒め物'},
   { name: '煮物'},
   { name: '燻製'},
   { name: '粉もの'},
   { name: '肉料理'},
   { name: 'お菓子・デザート'},
   { name: 'タレ・ドレッシング'},
   { name: '豆腐・大豆加工品'},
   { name: '野菜料理'},
   { name: '鍋もの'},
   { name: 'パン'},
   { name: '飲み物'},
   { name: '魚介料理'},
   { name: '肉料理'},
   { name: '麺類'}
   ])