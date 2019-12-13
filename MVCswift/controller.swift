class t_ec2_controller{

  var view: t_ec2_view?
  var model: t_ec2_model?

  init()
  {
    view = nil
    model = nil
  }
  init(_ view: t_ec2_view, _ model: t_ec2_model)
  {
    self.view = view
    self.model = model
  }

  func rezolva()
  {
    if let _view = view
    {
      if let _model = model
      {
        var a, b, c: Float
        a = 0; b = 0; c = 0
        _view.get_coef(&a, &b, &c)
        _model.set_coef(a, b, c)
        _model.calculeaza()
        var x1_re, x1_im, x2_re, x2_im: Float
        x1_re = 0; x1_im = 0; x2_re = 0; x2_im = 0
        _model.get_solutii(&x1_re, &x1_im, &x2_re, &x2_im)
        _view.tipareste(x1_re, x1_im, x2_re, x2_im)
      }
      else{
        print("nu avem model")
      }
    }
    else{
      print("nu avem view")
    }
  }
}