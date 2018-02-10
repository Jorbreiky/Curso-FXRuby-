require 'fox16'
include Fox

class Mensajes
  def initialize
    @tipo_mensajes = [
        MBOX_OK,
        MBOX_OK_CANCEL,
        MBOX_YES_NO,
        MBOX_YES_NO_CANCEL,
        MBOX_QUIT_CANCEL,
        MBOX_QUIT_SAVE_CANCEL,MBOX_SKIP_SKIPALL_CANCEL,
        MBOX_SAVE_CANCEL_DONTSAVE]
  end

  def error(app, tipo_mensaje, texto_superior, mensaje)
    return FXMessageBox.error(app, @tipo_mensajes[tipo_mensaje], texto_superior, mensaje)
  end

  def informacion(app, tipo_mensaje, texto_superior, mensaje)
    return FXMessageBox.information(app, @tipo_mensajes[tipo_mensaje], texto_superior, mensaje)
  end

  def pregunta(app, tipo_mensaje, texto_superior, mensaje)
    return FXMessageBox.question(app, @tipo_mensajes[tipo_mensaje], texto_superior, mensaje)
  end

  def precaucion(app, tipo_mensaje, texto_superior, mensaje)
    return FXMessageBox.warning(app, @tipo_mensajes[tipo_mensaje], texto_superior, mensaje)
  end

end