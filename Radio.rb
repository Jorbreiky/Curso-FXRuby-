require 'fox16'
include Fox

class Radio < FXMainWindow
  def initialize(app)
    super(app,"Curso FXRuby", :width=>300, :height=>300)
    @gropBox = FXGroupBox.new(self, "Sexo", :opts=>LAYOUT_EXPLICIT | GROUPBOX_TITLE_CENTER | FRAME_RIDGE, :width=>300, :height=>300, :x=>20, :y=>20)
    @dataTarget = FXDataTarget.new(2)
    @dataTarget.connect(SEL_COMMAND) do
      puts @dataTarget.value
    end
    FXRadioButton.new(@gropBox, "Masculino", @dataTarget, FXDataTarget::ID_OPTION)
    FXRadioButton.new(@gropBox, "Femenino", @dataTarget, FXDataTarget::ID_OPTION + 1)
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

app = FXApp.new
Radio.new(app)
app.create
app.run