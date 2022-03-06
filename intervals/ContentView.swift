//
//  ContentView.swift
//  intervals
//
//  Created by Aydin Metel on 3/5/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var activeSeconds: Int = 45
    @State var activeMinutes: Int = 0
    
    @State var breakSeconds: Int = 10
    @State var breakMinutes: Int = 0
    
    @State var numberOfSets: Int = 3

    
    var body: some View {
        
        VStack {
            Spacer()
            
            Group{
                
                Text("Active Time")
                
                HStack {
                    //Active Minutes
                    Picker(
                        selection: $activeMinutes,
                        label: Text("AS"),
                        content: {
                            ForEach(0..<61) {number in
                                Text("\(number)")
                                    .tag("\(number)")
                            }
                    }).pickerStyle(MenuPickerStyle())

                    Text(":")

                    //Active Seconds
                    Picker(
                        selection: $activeSeconds,
                        label: Text("FS"),
                        content: {
                            ForEach(0..<61) {number in
                                Text("\(number)")
                                    .tag("\(number)")
                            }
                        }).pickerStyle(MenuPickerStyle())
                }
            }

            Spacer()
            
            Group{
                
                Text("Break Time")
                
                HStack {
                    //Break Minutes
                    Picker(
                        selection: $breakMinutes,
                        label: Text("BS"),
                        content: {
                            ForEach(0..<61) {number in
                                Text("\(number)")
                                    .tag("\(number)")
                            }
                    }).pickerStyle(MenuPickerStyle())
                    
                    Text(":")
                    
                    //Break Seconds
                    Picker(
                        selection: $breakSeconds,
                        label: Text("CS"),
                        content: {
                            ForEach(0..<61) {number in
                                Text("\(number)")
                                    .tag("\(number)")
                            }
                        }).pickerStyle(MenuPickerStyle())
                }
            }
            
            Spacer()
            
            Group{
            
                Text("Sets")
                Picker(
                    selection: $numberOfSets,
                    label: Text("CS"),
                    content: {
                        ForEach(1..<10) {number in
                            Text("\(number)")
                                .tag("\(number)")
                        }
                        Text("Indefinite").tag(-1)
                    }).pickerStyle(MenuPickerStyle())
            }
            
            Spacer()
            Text("Warmup/Cooldown Time")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
