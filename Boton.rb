require 'fox16'
include Fox

class Boton < FXMainWindow
  def initialize(app)
    super(app,"Curso FXRuby", :width=>300, :height=>300)
    FXLabel.new(self, "Introduce tu nombre: ",:opts=>LAYOUT_EXPLICIT, :width=>120, :height=>50, :x=>20, :y=>20)
    @caja = FXTextField.new(self, 30, :opts=>LAYOUT_EXPLICIT, :width=>120, :height=>30, :x=>140, :y=>20)

    boton = FXButton.new(self, "Aceptar", :opts=>LAYOUT_EXPLICIT, :width=>100, :height=>50, :x=>20, :y=>70)
    boton.connect(SEL_COMMAND) do
      text = @caja.text
      puts "Hola #{text}"
    end
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end