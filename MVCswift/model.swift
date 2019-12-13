import Foundation
class t_ec2_model{

  
  var a, b, c: Float
  var x1_re, x1_im, x2_re, x2_im: Float
  
  
  init() //constructorul clasei
  {
    a = 0; b = 0; c = 0
    x1_re = 0; x1_im = 0; x2_re = 0; x2_im = 0
  }

  init(a: Float, b: Float, cc: Float)// constructor cu paramentri; cc pentru a evidentia conflictul intre datele membre
  {
    c = cc
    self.a = a
    self.b = b
    x1_re = 0; x1_im = 0; x2_re = 0; x2_im = 0
  }

  deinit//destructor (nu are parametri)
  {

  }
  
  func set_coef(_ a: Float, _ b: Float, _ c: Float)
  {
    self.c = c
    self.a = a
    self.b = b
  }

  func calculeaza()
  {
    print("a = \(a) b = \(b) c = \(c)")
    let delta = b * b - 4 * a * c
    if delta >= 0 {
      x1_re = (-b - sqrt(delta)/(2 * a))
      x2_re = (-b + sqrt(delta)/(2 * a))
      x1_im = 0
      x2_im = 0
  }
  else{
    x1_re = -b/(2 * a)
    x2_re = -b/(2 * a)
    x1_im = -sqrt(-delta) / (2 * a)
    x2_im = sqrt(-delta) / (2 * a)
    }
  }

  func get_solutii(_ x1_re: inout Float, _ x1_im: inout Float, _ x2_re: inout Float, _ x2_im: inout Float)
  {
    x1_re = self.x1_re
    x2_re = self.x2_re
    x1_im = self.x1_im
    x2_im = self.x2_im
  }
}