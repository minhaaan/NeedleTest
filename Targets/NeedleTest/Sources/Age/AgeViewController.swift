import UIKit

final class AgeViewController: UIViewController {
  
  // MARK: Properties
  
  private let age: Age
  
  // MARK: init
  
  init(age: Age) {
    self.age = age
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
    view.backgroundColor = .systemPink
    
    let label: UILabel = {
      let label = UILabel()
      label.text = age.age
      label.font = .boldSystemFont(ofSize: 20)
      return label
    }()
    
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
  
}
