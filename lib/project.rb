class Project
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backed_p = ProjectBacker.all.select {|pb| pb.project == self}
    backed_p.map {|pb| pb.backer}
  end

  def self.all
    @@all
  end
end