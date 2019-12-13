import Foundation


var model = t_ec2_model()
var view = t_ec2_view()
var ec2_controller = t_ec2_controller(view, model)

ec2_controller.rezolva()
print("model.a = \(model.a)")