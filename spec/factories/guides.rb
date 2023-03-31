# frozen_string_literal: true

# == Schema Information
#
# Table name: guides
#
#  id           :bigint           not null, primary key
#  content      :text(65535)      not null
#  lock_version :bigint           not null
#  title        :text(65535)      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :guide do
    title { Faker::Lorem.paragraph }
    content { Faker::Lorem.paragraph }
  end
end
