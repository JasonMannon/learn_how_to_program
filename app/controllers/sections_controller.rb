class SectionsController < ActionController::Base

  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end
end
