require 'fox16'
include Fox

class Fuentes < FXMainWindow
  def initialize(app)
    super(app,"Curso FXRuby", :width=>500, :height=>500)
    boton = FXButton.new(self, "Abrir", :opts=>LAYOUT_EXPLICIT|BUTTON_NORMAL, :width=>100, :height=>50, :x=>10, :y=>10)
    boton.connect(SEL_COMMAND)do
      dialog = FXFileDialog.new(self, "Abrir Archivo")
      dialog.patternList = ["*.txt", "*.rb"]
      if dialog.execute != 0
        puts "Archivo: #{dialog.filename}"
        linea = File.open(dialog.filename, "r").read
        @textArea.text = linea
      end
    end

    @textArea = FXText.new(self, :opts=>LAYOUT_EXPLICIT, :width=>300, :height=>300, :x=> 10, :y=>70)

  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Fuentes.new(app)
app.create
app.run