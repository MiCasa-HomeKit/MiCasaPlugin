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
import HAP

/**
 This is the base class for accessory MiCasa plugins.

 Accessory MiCasa plugins provide HomeKit accessories.

 - Author: Thomas Bonk <thomas@meandmymac.de>
 */
open class MiCasaAccessoryPlugin: MiCasaPlugin {

    // MARK: - Initialization

    /**
     Initialize the plugin.

     - Parameters:
         - apiGateway: The API gateway that provides MiCasa functions
         - configuration: The configuration for the plugin
     */
    public override init(apiGateway gateway: ApiGateway, configuration: [String:Any]) {
        super.init(apiGateway: gateway, configuration: configuration)
    }


    // MARK: - Plugin API

    /**
     This method must be overriden and has to return the accessories that are
     provided by this plugin.

     - Returns: The accessories that are provided by this plugin.
     */
    public func accessories() -> [Accessory] {
        fatalError("You have to override the method `accessories()`.")
    }

    public func identify(accessory: Accessory) {
        apiGateway
            .info(
                plugin: self,
                message: "Requested identification of accessory \(String(describing: accessory.info.name.value ?? ""))")
    }

    public func characteristic<T>(
        _ characteristic: GenericCharacteristic<T>,
        ofService service: Service,
        ofAccessory accessory: Accessory,
        didChangeValue newValue: T?) {

        apiGateway
            .info(
                plugin: self,
                message: "Characteristic \(characteristic) in service \(service.type) of "
                    + "accessory \(accessory.info.name.value ?? "") did change: \(String(describing: newValue))")
    }
}
