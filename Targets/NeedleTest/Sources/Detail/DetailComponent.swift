import UIKit
import NeedleFoundation

protocol DetailDependency: Dependency {
  var userInfo: UserData { get }
  var ageComponent: AgeComponent { get }
}

protocol DetailBuilder {
  var detailViewController: UIViewController { get }
}

final class DetailComponent: Component<DetailDependency>, DetailBuilder {
  
  var detailViewController: UIViewController {
    return DetailViewController(userData: dependency.userInfo, ageBuilder: dependency.ageComponent)
  }
}
