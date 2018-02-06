require 'fox16'
include Fox

class CajaTexto < FXMainWindow
  def initialize(app)
    super(app,"Etiqueta", :width=>300, :height=>300)
    FXTextField.new(self, 50, :opts=>LAYOUT_EXPLICIT, :width=>100, :height=>50, :x=>20, :y=>20)
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
CajaTexto.new(app)
app.create
app.run