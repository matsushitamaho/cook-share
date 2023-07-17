# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Admin.create!(
   email: 'test@hoge.com',
   password: 'testhoge',
)

Tag.create([
   { name: 'サラダ'},
   { name: 'ごはんもの'},
   { name: 'グラタン・ドリア'},
   { name: '麺類'},
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
   ])
   
customers = Customer.create!(
  [
    {last_name: '山田', first_name: '太郎', email: 'aaa@au.com', password: 'password'},
    {last_name: '田中', first_name: '一郎', email: 'bbb@au.com', password: 'password'},
    {last_name: '令和', first_name: '花子', email: 'ccc@au.com', password: 'password'},
    {last_name: '平成', first_name: '莉子', email: 'ddd@au.com', password: 'password'},
    {last_name: '深澤', first_name: '翔太', email: 'eee@au.com', password: 'password'},
    {last_name: '岩本', first_name: '大介', email: 'fff@au.com', password: 'password'},
    {last_name: '目黒', first_name: '亮平', email: 'ggg@au.com', password: 'password'},
    {last_name: '向井', first_name: '辰哉', email: 'hhh@au.com', password: 'password'},
    {last_name: '阿部', first_name: '康二', email: 'iii@au.com', password: 'password'},
    {last_name: '宮舘', first_name: '由紀', email: 'jjj@au.com', password: 'password'},
    {last_name: '渡辺', first_name: '眞帆', email: 'kkk@au.com', password: 'password'},
    {last_name: '平野', first_name: '汐里', email: 'lll@au.com', password: 'password'}
  ]
)