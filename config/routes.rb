Rails.application.routes.draw do
  root to: 'projects#index'
  get 'project_employees', to: 'projects#employees'
  get 'employees', to: 'employees#index'
  get 'employees_projects', to: 'employees#projects'
  get 'add_employees', to: 'projects#add_employees'
  get 'delete_employee', to: 'projects#delete_employee'

  match '*path' => redirect { |_p, req|
    req.flash[:alert] = "Page doesn't exist"
    '/'
  }, via: :all, constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
