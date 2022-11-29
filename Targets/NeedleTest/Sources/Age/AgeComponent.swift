//
//  AgeComponent.swift
//  NeedleTest
//
//  Created by 최민한 on 2022/11/29.
//  Copyright © 2022 com.minan.NeedleTest. All rights reserved.
//

import UIKit
import NeedleFoundation


protocol AgeDependency: Dependency {
  var age: Age { get }
}

protocol AgeBuilder {
  var ageViewController: UIViewController { get }
}

final class AgeComponent: Component<AgeDependency>, AgeBuilder {
  
  var ageViewController: UIViewController {
    return AgeViewController(age: dependency.age)
  }
  
}
