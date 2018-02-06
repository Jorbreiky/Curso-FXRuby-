require 'fox16'
include Fox

class Tabla < FXMainWindow
  def initialize(app)
    super(app,"Etiqueta", :width=>500, :height=>500)
    @tabla = FXTable.new(self, :opts=>LAYOUT_EXPLICIT, :width=>500, :height=>500, :x=>20, :y=>20)
    @tabla.visibleColumns = 3
    @tabla.visibleRows = 15
    @tabla.setTableSize(15, 3)

    @tabla.setItemText(0, 0, "Hola")
    @tabla.setItemText(1, 0, "Mundo")

    @tabla.setItemJustify(0,0, FXTableItem::CENTER_X | FXTableItem::CENTER_Y)
    @tabla.setRowText(0, "Fila 0")

    @tabla.setColumnText(0, "Nombre")
    @tabla.setColumnText(1, "Apellidos")
    @tabla.setColumnText(2, "Edad")
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Tabla.new(app)
app.create
app.run