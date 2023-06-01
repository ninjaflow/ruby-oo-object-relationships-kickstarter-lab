class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       backers_project = ProjectBacker.all.select {|pb| pb.project == self}
       backers_project.map(&:backer)
    end

end