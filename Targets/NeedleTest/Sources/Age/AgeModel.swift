//
//  AgeModel.swift
//  NeedleTest
//
//  Created by 최민한 on 2022/11/29.
//  Copyright © 2022 com.minan.NeedleTest. All rights reserved.
//

import Foundation

protocol Age {
  var age: String { get }
}

final class AgeImpl: Age {
  var age: String = "24살"
}
