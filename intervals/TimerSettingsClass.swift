//
//  TimerSettingsClass.swift
//  intervals
//
//  Created by Aydin Metel on 3/7/22.
//

import Foundation
import SwiftUI

class TimerSetting: ObservableObject {
    
    @Published var activeTime: Interval = Interval()
    @Published var breakTime: Interval = Interval()
    
    @Published var warmupTime: Interval = Interval()
    @Published var numSets: Int = 3
    
    init(){
        self.activeTime.minutes = 1
        self.activeTime.seconds = 0
        
        self.breakTime.minutes = 0
        self.breakTime.seconds = 5
        
        self.numSets = 3
        
        self.warmupTime.minutes = 0
        self.warmupTime.seconds = 0
    }
}
