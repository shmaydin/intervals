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
    
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Active Time")
                
                IntervalsPickerView(tMinutes: $activeMinutes, tSeconds: $activeSeconds)
                
                Spacer()
                
                
                Text("Break Time")
                IntervalsPickerView(tMinutes: $breakMinutes, tSeconds: $breakSeconds)
                
                Spacer()
                    .navigationTitle("Set Intervals")
                
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
}

struct SetIntervalsView_Previews: PreviewProvider {
    static var previews: some View {
        SET_IntervalsView()
.previewInterfaceOrientation(.portrait)
    }
}
