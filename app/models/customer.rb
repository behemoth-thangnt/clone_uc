# == Schema Information
#
# Table name: customers
#
#  id                   :bigint           not null, primary key
#  deleted_at           :datetime
#  email                :string(255)      not null
#  encrypted_password   :string(255)      not null
#  fax(FAX)             :string(255)      default("")
#  fax01                :string(255)
#  fax02                :string(255)
#  fax03                :string(255)
#  kana(カナ)           :string(255)      default("")
#  kana01               :string(255)
#  kana02               :string(255)
#  lock_version         :bigint
#  name(姓名(セイメイ)) :string(255)      default("")
#  name01               :string(255)
#  name02               :string(255)
#  tel(電話番号)        :string(255)      default("")
#  tel01                :string(255)
#  tel02                :string(255)
#  tel03                :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  idx_customers_on_email_deleted_at  (email,deleted_at) UNIQUE
#
class Customer < ApplicationRecord
  devise :database_authenticatable
  acts_as_paranoid

  def jwt_payload
    {
      sub: id,
      type: :customer
    }
  end
end
