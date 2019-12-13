import Foundation

struct t_coeficienti{
  var a, b, c: Float
}

struct t_solutie{
  var re, im: Float
}

struct t_solutii{
  var x1, x2: t_solutie
}

func citeste()->t_coeficienti //structura
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
              return t_coeficienti(a: f_a, b: f_b, c: f_c)
            }
            else{
              return t_coeficienti(a: 1, b: 2, c: 3)
            }
          }
          else{
            return t_coeficienti(a: 1, b: 2, c: 3)
          }
        }
        else{
          return t_coeficienti(a: 1, b: 2, c: 3)
        }
      }
      else{
        return t_coeficienti(a: 1, b: 2, c: 3)
      }    
    }
    else{
      return t_coeficienti(a: 1, b: 2, c: 3)
    }
  }
  else{
    return t_coeficienti(a: 1, b: 2, c: 3)
  }
}

func calculeaza(_ coef: t_coeficienti)-> t_solutii
{
  print("a = \(coef.a) b = \(coef.b) c = \(coef.c)")
  let delta = coef.b * coef.b - 4 * coef.a * coef.c
  if delta >= 0 {
    let x1 = t_solutie(re: (-coef.b - sqrt(delta))/(2 * coef.a), im: 0)
    let x2 = t_solutie(re: (-coef.b + sqrt(delta))/(2 * coef.a), im: 0)
    return t_solutii(x1: x1, x2: x2)
  }
  else{
    let x1 = t_solutie(re: ( -coef.b/(2 * coef.a)), im: ( -sqrt(-delta) / (2 * coef.a)))
    let x2 = t_solutie(re: ( -coef.b/(2 * coef.a)), im: (  sqrt(-delta) / (2 * coef.a)))
    return t_solutii(x1: x1, x2: x2)
  }
}

func tipareste(_ x: t_solutii)
{
  print("x1 = \(x.x1.re) + \(x.x1.im)i")
  print("x2 = \(x.x2.re) + \(x.x2.im)i")
}

func tipareste_vector(_ v: [Float])
{
  /*
  for i in v {
    print(i)
  }
  */
  /*
  var i = 0
  while (i < 3)
  {
    print(v[i])
    i += 1
  }
  */
  var i = 0
  repeat{
    print(v[i])
    i += 1
    } while i<3


}


var coef = citeste()
let x = calculeaza(coef)
tipareste(x)
