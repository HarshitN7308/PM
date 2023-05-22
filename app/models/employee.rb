# frozen_string_literal: true

#:nodoc:
class Employee < ApplicationRecord
  has_many :project_employees, dependent: :destroy
  has_many :projects, through: :project_employees

  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
