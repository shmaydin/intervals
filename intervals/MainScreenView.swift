//
//  MainScreenView.swift
//  intervals
//
//  Created by Aydin Metel on 3/7/22.
//

import SwiftUI

struct MainScreenView: View {
    
    @StateObject var timerData: TimerSetting = TimerSetting()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Home page holder")
                    .navigationTitle("Home Screen")
                
                NavigationLink(destination: SET_IntervalsView(), label: {
                    Text("Next Screen")
                        .bold()
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
            }
        }
        .environmentObject(timerData)
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
