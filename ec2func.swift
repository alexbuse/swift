import Foundation

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

            }
            else{
              print ("nu s-a putut converti c")
            }
          }
          else{
            print("nu am citit nimic in c")
          }
        }
        else{
          print ("nu s-a putut converti b")
        }
      }
      else{
        print("nu am citit nimic in b")
      }    
    }
    else{
      print ("nu s-a putut converti a")
    }
  }
  else{
    print("nu am citit nimic in a")
  }
}

func calculeaza()
{
  print("a = \(f_a) b = \(f_b) c = \(f_c)")
  let delta = f_b * f_b - 4 * f_a * f_c
  var x1_re, x1_im, x2_re, x2_im:Float
  if delta >= 0 {
    x1_re = (-f_b - sqrt(delta)/(2 * f_a))
    x2_re = (-f_b + sqrt(delta)/(2 * f_a))
    x1_im = 0
    x2_im = 0
  }
  else{
    x1_re = -f_b/(2 * f_a)
    x2_re = -f_b/(2 * f_a)
    x1_im = -sqrt(-delta) / (2 * f_a)
    x2_im = sqrt(-delta) / (2 * f_a)
  }
}

func tipareste()
{
  print("x1 = \(x1_re) + \(x1_im)i")
  print("x2 = \(x2_re) + \(x2_im)i")
}


citeste()
calculeaza()
tipareste()
