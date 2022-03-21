# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

root1 = Organization.create(name: "経営会議")

root1.find_or_create_by_path [
    {name: "プロダクト部"},
    {name: "マッチング領域"},
    {name: "ベースアップチーム"},
    {name: "picket"},
]

root1.find_or_create_by_path [
    {name: "プロダクト部"},
    {name: "マッチング領域"},
    {name: "ベースアップチーム"},
    {name: "あそびにん"},
]

root1.find_or_create_by_path [
    {name: "プロダクト部"},
    {name: "スポットワークシステム領域"},
    {name: "ユースケース駆動チーム"},
]

root1.find_or_create_by_path [
    {name: "プロダクト部"},
    {name: "スポットワークシステム領域"},
    {name: "zero_day_activation"},
]

root1.find_or_create_by_path [
    {name: "プロダクト部"},
    {name: "コーポレートIT"},
]

root1.find_or_create_by_path [
    {name: "カスタマーサポート"},
    {name: "プログラムG"},
]

root1.find_or_create_by_path [
    {name: "カスタマーサポート"},
    {name: "オペレーションG"},
]

root2 = Organization.create(name: "z_club_スノボ")

root2.find_or_create_by_path [
    {name: "ワイワイクラスタ"}
]
root2.find_or_create_by_path [
    {name: "黙々クラスタ"}
]