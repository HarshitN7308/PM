# frozen_string_literal: true

#:nodoc:
class Project < ApplicationRecord
  has_many :project_employees, dependent: :destroy
  has_many :employees, through: :project_employees
  validates :name, uniqueness: true
end
