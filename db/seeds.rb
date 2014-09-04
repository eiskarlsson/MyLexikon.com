# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#ruby encoding: utf-8
#require 'csv'
require 'mbti_test'

#class MbtiTest < ActiveRecord::Base;
#
#end

#mbti_test.reset_column_information
#mbti_test.delete_all

File.open("#{Rails.root}/public/seed_data/mbti_test.csv") do |mbti_test|
  mbti_test.read.each_line do |mbti_test1|
    @question_number1, @question1, @answer_a1, @answer_b1, @language1 = mbti_test1.chomp.split(/,(?![ \t])/)
    #  to remove the quotes from the csv text:
    #code.gsub!(/\A"|"\Z/, '')
    # to create each record in the database
    #MbtiTest.find_or_create_by_question_number_and_language(question_number, language)  do |r|
    @r = MbtiTest.where(:question_number => @question_number1).where(:language => @language1).first_or_create!(question: @question1, answer_a: @answer_a1, answer_b: @answer_b1)
    @r.question = @question1
    @r.answer_a = @answer_a1
    @r.answer_b = @answer_b1
    @r.save!
    #end
  end
end
=begin
  csv_text = File.read("#{Rails.root}/public/seed_data/mbti_test.csv").encode('UTF-8')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    MbtiTest.create!(row.to_hash)
    MbtiTest.save!
  end
=end
