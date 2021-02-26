class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def proj_backer
        ProjectBacker.all.select {|each_p_backer| each_p_backer.project == self}
    end

    def backers 
        proj_backer.map {|proj| proj.backer}
    end

end