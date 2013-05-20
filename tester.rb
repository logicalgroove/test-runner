require 'grit'

class Tester
  attr_accessor :url, :branches
  def initialize(dir)
    @dir = dir
    @repo = Grit::Repo.new(dir)
    @repo.git.pull
  end

  def branches
    @repo.git.branch
  end
end
