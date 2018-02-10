require 'fox16'
include Fox

class Combo < FXMainWindow
  def initialize(app)
    super(app,"Curso FXRuby", :width=>500, :height=>500)

    fuente = FXFont.new(app,"Modern, 120, BOLD,0")
    combo = FXComboBox.new(self, 3, :opts=> LAYOUT_EXPLICIT, :width=>200, :height=>30, :x=>10, :y=>10)
    combo.numVisible = 3
    combo.editable = false
    combo.font = fuente
    combo.appendItem("Opcion 1")
    combo.appendItem("Opcion 2")
    combo.appendItem("Opcion 3")

    combo.connect(SEL_COMMAND)do
      puts combo.text
    end

  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end