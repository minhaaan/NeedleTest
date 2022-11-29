

import Foundation
import NeedleFoundation
import UIKit

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class DetailDependencyb171f3bdca6113e7a5d9Provider: DetailDependency {
    var userInfo: UserData {
        return rootComponent.userInfo
    }
    var ageComponent: AgeComponent {
        return rootComponent.ageComponent
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->DetailComponent
private func factoryc2fb7565a56a6f107615b3a8f24c1d289f2c0f2e(_ component: NeedleFoundation.Scope) -> AnyObject {
    return DetailDependencyb171f3bdca6113e7a5d9Provider(rootComponent: parent1(component) as! RootComponent)
}
private class AgeDependency7d8efa80ac6e60902bd7Provider: AgeDependency {
    var age: Age {
        return rootComponent.age
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->AgeComponent
private func factorycc979c20d2a2fa5cbc69b3a8f24c1d289f2c0f2e(_ component: NeedleFoundation.Scope) -> AnyObject {
    return AgeDependency7d8efa80ac6e60902bd7Provider(rootComponent: parent1(component) as! RootComponent)
}

#else
extension DetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\DetailDependency.userInfo] = "userInfo-UserData"
        keyPathToName[\DetailDependency.ageComponent] = "ageComponent-AgeComponent"
    }
}
extension AgeComponent: Registration {
    public func registerItems() {
        keyPathToName[\AgeDependency.age] = "age-Age"
    }
}
extension RootComponent: Registration {
    public func registerItems() {


    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->RootComponent->DetailComponent", factoryc2fb7565a56a6f107615b3a8f24c1d289f2c0f2e)
    registerProviderFactory("^->RootComponent->AgeComponent", factorycc979c20d2a2fa5cbc69b3a8f24c1d289f2c0f2e)
    registerProviderFactory("^->RootComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
