import Foundation
import NeedleFoundation
import UIKit

final class RootComponent: BootstrapComponent {
  
  var userInfo: UserData {
    return shared { UserDataImpl() }
  }
  
  var detailComponent: DetailComponent {
    return DetailComponent(parent: self)
  }
  
  var viewController: UIViewController {
    return RootViewController(detailBuilder: detailComponent)
  }
  
}
