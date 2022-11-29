import UIKit

final class DetailViewController: UIViewController {
  
  // MARK: Properties
  
  private let userData: UserData
  private let ageBuilder: AgeComponent
  
  // MARK: init
  
  init(userData: UserData, ageBuilder: AgeComponent) {
    self.userData = userData
    self.ageBuilder = ageBuilder
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
    
    let bt: UIButton = {
      let bt = UIButton()
      bt.setTitle("show age", for: .normal)
      bt.titleLabel?.font = .boldSystemFont(ofSize: 20)
      bt.addTarget(self, action: #selector(taptap), for: .touchUpInside)
      return bt
    }()
    
    view.addSubview(bt)
    bt.translatesAutoresizingMaskIntoConstraints = false
    bt.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    bt.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
  }
  
  @objc
  private func taptap() {
    let ageVC = ageBuilder.ageViewController
    present(ageVC, animated: true)
  }
  
}
