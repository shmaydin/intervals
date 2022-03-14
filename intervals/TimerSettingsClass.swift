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
    
    @Published var isActiveTime: Bool = true
    
    init(){
        self.activeTime.minutes = 0
        self.activeTime.seconds = 5
        
        self.breakTime.minutes = 0
        self.breakTime.seconds = 2
        
        self.numSets = 2
        
        self.warmupTime.minutes = 0
        self.warmupTime.seconds = 0
        
        self.isActiveTime = true
    }
    
//    //Run Timer method
//    func run_timer() {
//        //Psudo Code:
//        //while sets > 0
//        // timeRemaining = activeTime.timeInSeconds()
//        //      for j in range(timeRemaining):
//        //          update timer
//        //      //once timer hits zero send user a notificaiton an begin break timer
//        // timeRemaining = breakTime.timeInSeconds
//        //      for j in range(timeRemaining):
//        //          update display
//        //  sets -= 1
//    }
//
//    func pause_timer() {
//
//    }
//
}
//
