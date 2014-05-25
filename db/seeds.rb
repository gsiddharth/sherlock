# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Exam.delete_all
exam=Exam.create!(name: 'SAT')
Subject.delete_all
subject=Subject.create!(name:'Mathematic',exam: exam)
Topic.delete_all
Topic.create(name:'Algebra', subject: subject)
Topic.create(name:'Geometry', subject: subject)
Topic.create(name:'Arithmetic Operations', subject: subject)
Topic.create(name:'Statistics', subject: subject)
Topic.create(name:'Probability', subject: subject)
UserToExam.delete_all

user=User.find(1)
UserToExam.create!(user: user, exam:exam, active: true)

