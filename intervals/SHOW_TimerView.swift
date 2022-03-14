//
//  SHOW_TimerView.swift
//  intervals
//
//  Created by Aydin Metel on 3/8/22.
//

import SwiftUI

struct SHOW_TimerView: View {
    
    @EnvironmentObject var timerData: TimerSetting
    
    var body: some View {
        VStack{
            Text("example")
                .navigationTitle("Get After It!")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
            timerView()
        }
    }
}

struct SHOW_TimerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SHOW_TimerView()
                .environmentObject(TimerSetting())
        }
    }
}
