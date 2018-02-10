require_relative 'Mensajes'
require 'fox16'
include Fox
class Prueba < FXMainWindow
  def initialize(app)
    super(app, "Mensajes", :width=>200, :height=>300)
    @mensaje = Mensajes.new

    boton = FXButton.new(self, "OK")
    boton.connect(SEL_COMMAND)do
      @mensaje.precaucion(app, 0, "Warning JJE", "Mensaje OK")
    end

    boton1 = FXButton.new(self, "OK_CANCEL")
    boton1.connect(SEL_COMMAND)do
      @mensaje.precaucion(app, 1, "Warning JJE", "Mensaje OK")
    end

  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Prueba.new(app)
app.create
app.run