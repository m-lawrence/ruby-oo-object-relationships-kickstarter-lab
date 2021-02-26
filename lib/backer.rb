require 'pry'

class Backer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def proj_helper
        ProjectBacker.all.select {|proj| proj.backer == self}
    end

    def backed_projects
        proj_helper.map {|proj| proj.project}
    end

end