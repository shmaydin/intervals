//
//  SET_SetsAndWarmup.swift
//  intervals
//
//  Created by Aydin Metel on 3/6/22.
//

import SwiftUI

struct SET_SetsAndWarmupView: View {
    
    @State var warmupMinutes: Int = 0
    //@State var numSets: Int = 3
    
    @EnvironmentObject var timerData: TimerSetting
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            WarmupCooldownView(warmupMinutes: $timerData.warmupTime.minutes)
            
            Spacer()
            
            
            SetsPickerView()
            
            Spacer()
                .navigationTitle("Additional Info")
                .navigationBarTitleDisplayMode(.inline)
            
            NavigationLink(destination: SHOW_TimerView(), label: {
                Text("Start Exercise")
                    .bold()
                    .frame(width: 150, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
    }
}

struct SET_SetsAndWarmup_Previews: PreviewProvider {
    static var previews: some View {
        SET_SetsAndWarmupView()
    }
}
