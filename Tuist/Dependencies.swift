import ProjectDescription
import ProjectDescriptionHelpers

let pack = SwiftPackageManagerDependencies([
  .remote(url: "https://github.com/uber/needle", requirement: .exact("0.20.0"))
])

let dependencies = Dependencies(
  carthage: nil,
  swiftPackageManager: pack,
  platforms: [.iOS])
