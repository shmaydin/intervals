//
//  timerView.swift
//  intervals
//
//  Created by Aydin Metel on 3/12/22.
//

import SwiftUI

struct timerView: View {
    
    let timer = Timer.publish(every: 1.0, on: .current, in: .common).autoconnect()
    
    @State var timeElapsed: Int = 0
    
    @State var timeRemaining: Int = 0
    @State var minutesRemaining: Int = 0
    @State var secondsRemaining: Int = 0

    @EnvironmentObject var timerData: TimerSetting
    
    func updateTimeRemaining(){
        timeRemaining = timerData.activeTime.timeInSeconds() - timeElapsed
        minutesRemaining = (timeRemaining / 60)
        secondsRemaining = (timeRemaining % 60)
        timeElapsed += 1
        
    }
    
    var body: some View {
        VStack{
            //Text("\(minutesRemaining) : \(secondsRemaining)")
            Text(String(format: "%02d : %02d", minutesRemaining, secondsRemaining))
            Spacer()
            Text("\(timerData.numSets)")
        }
        .onReceive(timer, perform: { _ in
            updateTimeRemaining()
        })
        
    }
}

struct timerView_Previews: PreviewProvider {
    static let tempTimerData = TimerSetting()
    
    static var previews: some View {
        timerView(timeElapsed: 0, timeRemaining: 0, minutesRemaining: 1, secondsRemaining: 40)
            .environmentObject(TimerSetting())
    }
}
