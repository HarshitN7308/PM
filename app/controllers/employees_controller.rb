# frozen_string_literal: true

#:nodoc:
class EmployeesController < ApplicationController
  def index
    if params[:pid]
      @project = Project.find(params[:pid])
      @employees= @project.employees
    else
      @employees = Employee.all
    end
  end
end
