# frozen_string_literal: true

#:nodoc:
class ProjectEmployee < ApplicationRecord
  belongs_to :project
  belongs_to :employee
  validates :employee_id, uniqueness: { scope: :project_id }
end
