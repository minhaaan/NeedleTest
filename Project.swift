import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains TuistProjectTemplate App target and TuistProjectTemplate unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let dependencies: [TargetDependency] = [
  .external(name: "NeedleFoundation")
]

let project = Project(
  name: "NeedleTest",
  organizationName: "com.minan.NeedleTest",
  packages: [],
  settings: nil,
  targets: Project.makeAppTargets(
    name: "NeedleTest",
    dependencies: dependencies,
    scripts: [.pre(script: "needle generate blblbl", name: "Needle Generate")]
  )
)
