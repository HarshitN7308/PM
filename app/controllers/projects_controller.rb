# frozen_string_literal: true

#:nodoc:
class ProjectsController < ApplicationController
  def index
    @employees = Employee.all
    if params[:eid]
      @projects = Employee.find(params[:eid]).projects
    else
      @projects = Project.all
    end
  end

  def add_employees
    params[:emp_ids].each do |eid|
      ProjectEmployee.create(project_id: params[:pid], employee_id: eid)
    end
    respond_to do |format|
      format.js {render inline: "location.reload();" }
    end
  end

  def delete_employee
    ProjectEmployee.where(project_id: params[:pid], employee_id: params[:eid]).delete_all
    respond_to do |format|
      format.js {render inline: "location.reload();" }
    end
  end
end
