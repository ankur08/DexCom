//
//  Model.swift
//  DexCom
//
//  Created by Ankur Nema on 13/03/26.
//

import Foundation
import SwiftUI
internal import Combine

struct HealthData {
    var highValue : Int
    var lowValue: Int
    var currentValue: Int
}

enum Range {
    case high
    case low
    case inRange
}

class NetworkManager {
    func fetchData()-> HealthData {
        return HealthData(highValue: 120, lowValue: 70, currentValue: 189)
    }
}

class ViewModel: ObservableObject {
    
    @Published var healthData = HealthData(highValue: 120, lowValue: 70, currentValue: 0)
    
    private let netManager = NetworkManager()
    func fetchData() {
        healthData = netManager.fetchData()
    }
    
    var dataRange : Range {
        switch healthData.currentValue {
        case ..<healthData.lowValue : return .low
        case healthData.lowValue...healthData.highValue : return .inRange
        default : return .high
        }
    }
}
