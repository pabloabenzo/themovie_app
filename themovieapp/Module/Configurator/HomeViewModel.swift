//
//  HomeViewModel.swift
//  themovieapp
//
//  Created by Pablo Benzo on 22/08/2024.
//

import Foundation
import UIKit
import SwiftUI

class HomeViewModel {
    
    func colorManager(color: Color) -> Color {
        switch color {
        case .blue:
            return Color(Color(cgColor: .init(red: 36/255, green: 42/255, blue: 50/255, alpha: 1.0)))
        case .yellow:
            return Color(Color(cgColor: .init(red: 255/255, green: 204/255, blue: 0/255, alpha: 1.0)))
        default:
            return Color.black
        }
    }
    
}
