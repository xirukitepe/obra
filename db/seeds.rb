# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Comic.destroy_all
ComicImage.destroy_all
ComicChapter.destroy_all
Feedback.destroy_all

user = User.create(
    email: 'test1@test.com',
    password: '12345678',
    firstname: 'Test',
    lastname: '1',
    birthday: Date.today - 20.years,
    username: 'test1',
    pic: File.open("#{Rails.root}/app/assets/images/1135353-pinoy_1.jpg")
)
c1 = Comic.create(
    user_id: user.id,
    date: Date.today,
    title: 'Test Comics',
    synopsis: 'This explain the brief summary of the comic',
    category: '1,2,3'
)
c2 = Comic.create(
    user_id: user.id,
    date: Date.today,
    title: 'Test Comics 2',
    synopsis: 'This explain the brief summary of the comic',
    category: '1,2,3'
)
c3 = Comic.create(
    user_id: user.id,
    date: Date.today,
    title: 'Test Comics 3',
    synopsis: 'This explain the brief summary of the comic',
    category: '1,2,3'
)

ch1 = ComicChapter.create(
    title: 'first chapter',
    chapter_no: 1,
    comic_id: c1.id
)
ch2 = ComicChapter.create(
    title: 'first chapter 4',
    chapter_no: 1,
    comic_id: c2.id
)
ch3 = ComicChapter.create(
    title: 'first chapter 2',
    chapter_no: 1,
    comic_id: c3.id
)
i1 = ComicImage.create(
    comic_chapter_id: ch1.id,
    cover_photo: true,
    page_no: 1,
    comic: File.open("#{Rails.root}/public/testpix/bird1.jpeg")
)
i2 = ComicImage.create(
    comic_chapter_id: ch1.id,
    cover_photo: false,
    page_no: 2,
    comic: File.open("#{Rails.root}/public/testpix/bird2.jpeg")
)
i3 = ComicImage.create(
    comic_chapter_id: ch1.id,
    cover_photo: false,
    page_no: 3,
    comic: File.open("#{Rails.root}/public/testpix/bird3.jpeg")
)
i4 = ComicImage.create(
    comic_chapter_id: ch2.id,
    cover_photo: true,
    page_no: 1,
    comic: File.open("#{Rails.root}/public/testpix/dog1.jpeg")
)
i5 = ComicImage.create(
    comic_chapter_id: ch2.id,
    cover_photo: false,
    page_no: 2,
    comic: File.open("#{Rails.root}/public/testpix/dog2.jpeg")
)
i6 = ComicImage.create(
    comic_chapter_id: ch2.id,
    cover_photo: false,
    page_no: 3,
    comic: File.open("#{Rails.root}/public/testpix/dog3.jpeg")
)

i7 = ComicImage.create(
    comic_chapter_id: ch3.id,
    cover_photo: true,
    page_no: 1,
    comic: File.open("#{Rails.root}/public/testpix/d1.jpg")
)
i8 = ComicImage.create(
    comic_chapter_id: ch3.id,
    cover_photo: false,
    page_no: 2,
    comic: File.open("#{Rails.root}/public/testpix/d2.jpg")
)
i9 = ComicImage.create(
    comic_chapter_id: ch3.id,
    cover_photo: false,
    page_no: 3,
    comic: File.open("#{Rails.root}/public/testpix/d3.jpg")
)

