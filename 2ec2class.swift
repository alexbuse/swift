import Foundation

struct t_coeficienti{
}


class t_ec2{

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

  deinit//destructor
  {

  }

  func citeste()
  {
    print("a = ")
    let s_o_a = readLine() //string, optional, variabila a
    if let s_a = s_o_a{
      let f_o_a = Float(s_a) //float, optional, a
      if let f_a = f_o_a{
        print("b = ")
        let s_o_b = readLine() //string, optional, variabila a
        if let s_b = s_o_b{
          let f_o_b = Float(s_b) //float, optional, a
          if let f_b = f_o_b{
            print("c = ")
            let s_o_c = readLine() //string, optional, variabila a
            if let s_c = s_o_c{
              let f_o_c = Float(s_c) //float, optional, a
              if let f_c = f_o_c{

                a = f_a
                b = f_b
                c = f_c

              }
              else{
                a = 1; b = 2; c = 1
              }
            }
            else{
              a = 1; b = 2; c = 1
            }
          }
          else{
            a = 1; b = 2; c = 1
          }
        }
        else{
          a = 1; b = 2; c = 1
        }    
      }
      else{
        a = 1; b = 2; c = 1
      }
    }
    else{
      a = 1; b = 2; c = 1
    }
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

  func tipareste()
  {
  print("x1 = \(x1_re) + \(x1_im)i")
  print("x2 = \(x2_re) + \(x2_im)i")
  }

}

var ec2 = t_ec2()

ec2.citeste()
ec2.calculeaza()
ec2.tipareste()
