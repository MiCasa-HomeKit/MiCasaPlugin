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
 API Gateway for MiCasa plugins.

 - Author: Thomas Bonk <thomas@meandmymac.de>
 */
public protocol ApiGateway {

    // MARK: - Bridge API

    /// All accessories that are currently provided by MiCasa
    var accessories: [Accessory] { get }


    // MARK: - Logging

    /**
     This method can be called to log an info message.

     - Parameters:
         - plugin: the plugin that wants to log a message
         - message: the message to be logged
     */
    func info(plugin: MiCasaPlugin, message: String)

    /**
     This method can be called to log a warning message.

     - Parameters:
         - plugin: the plugin that wants to log a message
         - message: the message to be logged
     */
    func warning(plugin: MiCasaPlugin, message: String)

    /**
     This method can be called to log an error message.

     - Parameters:
         - plugin: the plugin that wants to log a message
         - message: the message to be logged
     */
    func error(plugin: MiCasaPlugin, message: String)

    /**
     This method can be called to log a critical error message.

     - Parameters:
         - plugin: the plugin that wants to log a message
         - message: to be logged
     */
    func critical(plugin: MiCasaPlugin, message: String)

    /**
     This method can be called to log a debug message.

     - Parameters:
         - plugin: the plugin that wants to log a message
         - message: the message to be logged
     */
    func debug(plugin: MiCasaPlugin, message: String)

    /**
     This method can be called to log a trace message.

     - Parameters:
         - plugin: the plugin that wants to log a message
         - message: the message to be logged
     */
    func trace(plugin: MiCasaPlugin, message: String)
}
