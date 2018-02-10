require_relative 'Boton'
require 'fox16'
include Fox

class Barra < FXMainWindow
  def initialize(app)
    @app = app
    super(app, "Presentación", :width=>500, :height=>280)
    @dataTarget = FXDataTarget.new(10)
    barra = FXProgressBar.new(self, @dataTarget, FXDataTarget::ID_VALUE, LAYOUT_SIDE_BOTTOM|LAYOUT_FILL_X|FRAME_SUNKEN|FRAME_THICK)
    barra.barColor = "green"
    barra.barBGColor = "black"

    icono = FXPNGIcon.new(app, File.open("img/portada.png","rb").read)
    fondo = FXLabel.new(self, "", :opts=>LAYOUT_EXPLICIT, :width=>500, :height=>280, :x=>0, :y=>0)
    fondo.icon = icono
    fondo.iconPosition = ICON_BEFORE_TEXT
    fondo.layoutHints = LAYOUT_FILL_X|LAYOUT_FILL_Y

  end

  def create
    super
    getApp().addTimeout(50, method(:tiempo))
    show(PLACEMENT_SCREEN)
  end

  def tiempo(sender, sel, ptr)
    @dataTarget.value = @dataTarget.value + 2
    if(@dataTarget.value >=99)
      ventana = Boton.new(@app)
      ventana.create
      ventana.show(PLACEMENT_SCREEN)
      self.close
    else
      getApp().addTimeout(50, method(:tiempo))
    end
  end
end

app = FXApp.new
Barra.new(app)
app.create
app.run