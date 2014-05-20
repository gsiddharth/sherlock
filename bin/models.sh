#!/bin/sh

# User profile models
#rails g model Country name:string
#rails g model State name:string country:references
#rails g model City name:string state:references
rails g model Address description:text city:references pincode:integer
rails g model UserProfile user_type:string user:references first_name:string last_name:string dob:date profile_photo:string gender:string address:references mobile_number:string
rails g model GuardianToUser user:references guardian:references
 
#Exam models
rails g model Exam name:string
rails g model Subject name:string exam:references
rails g model Topic name:string subject:references
rails g model Question difficulty_level:integer variables:string description:text option1:string option2:string option3:string option4:string option5:string right_option:string
rails g model QuestionsToTopics topic:belongs_to question:belongs_to
rails g model GeneratedQuestion question:references variable_values:string description:text option1:string option2:string option3:string option4:string option5:string right_option:string
rails g model UserAnswer user:references generated_question:references marked_option:string iscorrect:bool
rails g model QuestionSolution question:references description:text

rails g model UserToExam user:belongs_to exam:belongs_to