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
require 'rails_helper'

RSpec.describe Guide, type: :model do
  let!(:guide) { create(title: 'guide', content: 'content') }
  it do
    expect(described_class.find_by(title: 'guide').present?).to be(true)
  end
end
