//
//  ContentView.swift
//  intervals
//
//  Created by Aydin Metel on 3/5/22.
//

import SwiftUI



struct SET_IntervalsView: View {
    
    @State var activeSeconds: Int = 45
    @State var activeMinutes: Int = 0
    
    @State var breakSeconds: Int = 10
    @State var breakMinutes: Int = 0
    
    @EnvironmentObject var timerData: TimerSetting
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text("Active Time")
            IntervalsPickerView(tMinutes: $timerData.activeTime.minutes, tSeconds: $timerData.activeTime.seconds)
            
            Spacer()
            
            Text("Break Time")
            IntervalsPickerView(tMinutes: $timerData.breakTime.minutes, tSeconds: $timerData.breakTime.seconds)
            
            Spacer()
                .navigationTitle("Set Intervals")
                .navigationBarTitleDisplayMode(.inline)
            
            NavigationLink(destination: SET_SetsAndWarmupView(), label: {
                Text("Next Screen")
                    .bold()
                    .frame(width: 150, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            //Spacer()
        }
    }
}

struct SetIntervalsView_Previews: PreviewProvider {
    static var previews: some View {
        SET_IntervalsView()
.previewInterfaceOrientation(.portrait)
    }
}
