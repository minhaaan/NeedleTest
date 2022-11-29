import UIKit

final class RootViewController: UIViewController {
  
  // MARK: Properties
  
  private let detailBuilder: DetailBuilder
  
  // MARK: init
  
  init(detailBuilder: DetailBuilder) {
    self.detailBuilder = detailBuilder
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
    view.backgroundColor = .systemBlue
    
    let label: UILabel = {
      let label = UILabel()
      label.text = "HELLO"
      label.font = .boldSystemFont(ofSize: 20)
      return label
    }()
    
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    let bt: UIButton = {
      let bt = UIButton()
      bt.setTitle("show detail", for: .normal)
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
    let detailVC = detailBuilder.detailViewController
    present(detailVC, animated: true)
  }
  
}
