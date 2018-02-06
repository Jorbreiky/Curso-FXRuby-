require 'fox16'
include Fox

class Check < FXMainWindow
  def initialize(app)
    super(app,"Curso FXRuby", :width=>300, :height=>300)
    @check1 = FXCheckButton.new(self, "Masculino", :opts=>LAYOUT_EXPLICIT|CHECKBUTTON_NORMAL, :width=>100, :height=>50, :x=>10, :y=>10)
    boton = FXButton.new(self, "Aceptar", :opts=>LAYOUT_EXPLICIT|BUTTON_NORMAL, :width=>100, :height=>50, :x=>110, :y=>10)
    boton.connect(SEL_COMMAND)do
      puts @check1.check
    end
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Check.new(app)
app.create
app.run