/*
 Copyright 2020 MiCasa Development Team

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

/**
 * This abstract class must be inherited by a builder of a plugin.
 *
 * Plugins must be provided as a dynamic library. In your package manifest,
 * you must define the product as follows:
 * ```swift
 * products: [
 *      .library(name: "MyCoolPlugin", type: .dynamic, targets: ["MyCoolPlugin"]),
 * ]
 * ```
 *
 * Additionally you must provide the function `createPlugin` that instantiates
 * the plugin builder and returns the instace. The function implementation should
 * look like this:
 * ```swift
 * @_cdecl("createPluginBuilder")
 * public func createPluginBuilder() -> UnsafeMutableRawPointer {
 *   return Unmanaged.passRetained(PluginBuilder()).toOpaque()
 * }
 * ```
 *
 * Author: Thomas Bonk <thomas@meandmymac.de>
 */
open class MiCasaPluginBuilder<PluginType: MiCasaPlugin> {

    // MARK: - Plugin Properties

    /// The plugin id. The id must be unique and constant; it mustn't change.
    public var pluginId: UUID {
        fatalError("You have to override the property `pluginId`.")
    }

    /// The plugin name. The plugin name must be unique and is a technical name.
    public var pluginName: String {
        fatalError("You have to override the property `pluginName`.")
    }

    /// The plugin version.
    public var pluginVersion: String {
        fatalError("You have to override the property `pluginVersion`.")
    }

    /// Printable description of the plugin.
    public var description: String {
        return "\(pluginName)-\(pluginVersion)(\(pluginId))"
    }


    // MARK: - Initialization

    /**
       This method must return an instance of the plugin.

       - Parameter apiGateway: The API that can be used by the plugin.

       - Returns: An instance of the plugin
     */
    open func build(apiGateway: ApiGateway, configuration: [String:Any]) -> PluginType {
        fatalError("You have to override the method 'build()'.")
    }
}
