# frozen_string_literal: true

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return true if value.match?(URI::MailTo::EMAIL_REGEXP)

    record.errors.add(:email)
  end
end
