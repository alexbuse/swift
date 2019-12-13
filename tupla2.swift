import Foundation

func citeste()->(Float, Float, Float)//tupla
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
              return(f_a, f_b, f_c)
            }
            else{
              return(1, 2, 1)
            }
          }
          else{
            return(1, 2, 1)
          }
        }
        else{
          return(1, 2, 1)
        }
      }
      else{
        return(1, 2, 1)
      }    
    }
    else{
      return(1, 2, 1)
    }
  }
  else{
    return(1, 2, 1)
  }
}

func calculeaza(_ coef: (a: Float, b: Float, c: Float), _ x1: inout (re: Float, im: Float), _ x2: inout (re: Float, im: Float))
{
  print("a = \(coef.a) b = \(coef.b) c = \(coef.c)")
  let delta = coef.b * coef.b - 4 * coef.a * coef.c
  if delta >= 0 {
    x1.re = (-coef.b - sqrt(delta)/(2 * coef.a))
    x2.re = (-coef.b + sqrt(delta)/(2 * coef.a))
    x1.im = 0
    x2.im = 0
  }
  else{
    x1.re = -coef.b/(2 * coef.a)
    x2.re = -coef.b/(2 * coef.a)
    x1.im = -sqrt(-delta) / (2 * coef.a)
    x2.im = sqrt(-delta) / (2 * coef.a)
  }
}

func tipareste(_ x1: (re: Float, im: Float),_ x2: (re: Float, im: Float))
{
  print("x1 = \(x1.re) + \(x1.im)i")
  print("x2 = \(x2.re) + \(x2.im)i")
}


var x1_re, x1_im, x2_re, x2_im: Float
var x1, x2: (re: Float, im: Float)
x1 = (re: 0, im: 0)
x2 = (re: 0, im: 0)

var coef = citeste()
calculeaza(coef, &x1, &x2)
tipareste(x1, x2)
