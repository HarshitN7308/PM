# frozen_string_literal: true

unless Project.any?
  projects = [{ name: 'Internal'},
                {name: 'I-360'},
                {name: 'Field Trip'},
                {name: 'Atkot'},
                {name: 'Pfnrates'}]
  Project.create(projects)
  puts '-----------Create Project-----------'
end


unless Employee.any?
  employees = [{ email: 'harshit@gmail.com'},
                {email: 'mihir@gmail.com'},
                {email: 'axit@gmail.com'},
                {email: 'riddhi@gmail.com'},
                {email: 'kinjal@gmail.com'}]
  Employee.create(employees)
  puts '-----------Create Employee-----------'
end
