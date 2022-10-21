//
//  DynamicSizeGeometryProxy.swift
//  Olivia Wilson
//
//  Created by Ata emir on 21.10.2022.
//

import SwiftUI

extension GeometryProxy{
    
    /// Dynamic Height By Device
    /// - Parameter height: Percent Value
    /// - Returns: Calculated value for device height
    func dh(height: Double) -> Double{
        return size.height * height
    }
    
    /// Dynamic Widht By Device
    /// - Parameter widht: Percent Value
    /// - Returns: Calculated value for device widht
    func dw(widht: Double) -> Double{
        return size.width * widht
    }
}
