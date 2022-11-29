import Foundation
import NeedleFoundation
import UIKit

final class RootComponent: BootstrapComponent {
  
  var userInfo: UserData {
    return shared { UserDataImpl() }
  }
  
  var age: Age {
    return shared { AgeImpl() }
  }
  
  var ageComponent: AgeComponent {
    return AgeComponent(parent: self)
  }
  
  var detailComponent: DetailComponent {
    return DetailComponent(parent: self)
  }
  
  var viewController: UIViewController {
    return RootViewController(detailBuilder: detailComponent)
  }
  
}
