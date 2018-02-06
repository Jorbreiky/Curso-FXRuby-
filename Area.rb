require 'fox16'
include Fox

class Area < FXMainWindow
  def initialize(app)
    super(app,"Curso FXRuby", :width=>500, :height=>500)
    FXText.new(self, :opts=>LAYOUT_EXPLICIT, :width=>300, :height=>300, :x=>20, :y=>20)
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Area.new(app)
app.create
app.run