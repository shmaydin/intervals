//
//  IntervalClass.swift
//  intervals
//
//  Created by Aydin Metel on 3/7/22.
//

import Foundation
import SwiftUI

class Interval: ObservableObject {
    
    @Published var minutes: Int
    @Published var seconds: Int
    
    init() {
        self.minutes = 0
        self.seconds = 0
    }
    
    func timeInSeconds() -> Int {
        return ((self.minutes * 60) + self.seconds)
    }
}

