require 'fox16'
include Fox

class Menu < FXMainWindow
  def initialize(app)
    super(app,"Etiqueta", :width=>500, :height=>500)
    menuBar = FXMenuBar.new(self, LAYOUT_SIDE_TOP|LAYOUT_FILL_X|FRAME_RIDGE)
    menuPane = FXMenuPane.new(self)

    opcion1 = FXMenuCommand.new(menuPane, "Opcion 1")
    opcion2 = FXMenuCommand.new(menuPane, "Opcion 2")

    opcion1.connect(SEL_COMMAND)do
      puts "Ha presionado la opcion 1"
    end

    opcion2.connect(SEL_COMMAND)do
      puts "Ha presionado la opcion 2"
    end

    FXMenuTitle.new(menuBar, "Titulo 1", :popupMenu=>menuPane)
    FXMenuTitle.new(menuBar, "Titulo 2", :popupMenu=>menuPane)
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Menu.new(app)
app.create
app.run