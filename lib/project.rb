class Project

  attr_reader :title
  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    new_array = ProjectBacker.all.select {|pb|pb.project == self}
    new_array.map {|pb| pb.backer}
  end
  
end