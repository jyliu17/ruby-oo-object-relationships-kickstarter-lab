class Backer
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def back_project(project)
      ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = []
        ProjectBacker.all.map do |project_backer|
            if project_backer.backer == self

             projects << project_backer.project
            
            end
        end   
        projects
    end
end  