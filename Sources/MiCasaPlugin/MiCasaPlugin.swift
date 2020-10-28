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
 This is the base class for general MiCasa plugins.

 General MiCasa plugins don't provide any HomeKit accessories.
 They can be used to provide web-based UIs, REST services for
 accessing MiCasa from apps etc.

 - Author: Thomas Bonk <thomas@meandmymac.de>
 */
open class MiCasaPlugin {

    // MARK: - Private Propereties

    internal private(set) var apiGateway: ApiGateway!

    internal private(set) var configuration: [String:Any]!


    // MARK: - Initialization

    /**
     Initialize the plugin.

     - Parameters:
        - apiGateway: The API gateway that provides MiCasa functions
        - configuration: The configuration for the plugin
     */
    public init(apiGateway gateway: ApiGateway, configuration: [String:Any]) {
        self.apiGateway = gateway
        self.configuration = configuration
    }
}
