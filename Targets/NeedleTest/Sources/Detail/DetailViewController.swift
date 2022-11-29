import UIKit

final class DetailViewController: UIViewController {
  
  // MARK: Properties
  
  private let userData: UserData
  
  // MARK: init
  
  init(userData: UserData) {
    self.userData = userData
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  // MARK: LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupLayout()
  }
  
  // MARK: Method

  private func setupLayout() {
    view.backgroundColor = .systemRed
    
    let label: UILabel = {
      let label = UILabel()
      label.text = userData.data
      label.font = .boldSystemFont(ofSize: 20)
      return label
    }()
    
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }

}
