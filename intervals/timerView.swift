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
    
    @State var timeRemaining: Int = 2
    @State var minutesRemaining: Int = 0
    @State var secondsRemaining: Int = 0
    
    @EnvironmentObject var timerData: TimerSetting
    
    
    func  updateSetCount(){
        
        if timerData.isActiveTime {
            //exercise is done. stop timer and prompt for new settings
            if timerData.numSets <= 1 {
                //TODO: begin cooldown process - if no cooldown stop timer
                //timer.upstream.connect().cancel()
            }
        }
        
        //after break, decrement numSets
        else if timerData.isActiveTime == false{
            timerData.numSets -= 1
        }
        
        timerData.isActiveTime = !timerData.isActiveTime
        timeElapsed = 0
    }
    
    
    func calculateTimeRemaining(){
        
        if timerData.isActiveTime {
            timeRemaining = timerData.activeTime.timeInSeconds() - timeElapsed
        }
        else {
            timeRemaining = timerData.breakTime.timeInSeconds() - timeElapsed
        }
        
        minutesRemaining = (timeRemaining / 60)
        secondsRemaining = (timeRemaining % 60)
    }
    
    
    func updateTimeRemaining(){
        
        //time has expired
        if timeRemaining < 1 {
            updateSetCount()
        }
        
        calculateTimeRemaining()
    }
    
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            VStack{
                Text("Time Remaining")
                //Text("\(minutesRemaining) : \(secondsRemaining)")
                Text(String(format: "%02d : %02d", minutesRemaining, secondsRemaining))
                    .padding(5)
            }
            
            Spacer()
            
            Text("Sets Remaining: \(timerData.numSets)")
            
            Text("Active Time? \(String(timerData.isActiveTime))")
            
            Spacer()
        }
        
        .onReceive(timer, perform: { _ in
            updateTimeRemaining()
            timeElapsed += 1
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
