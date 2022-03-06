//
//  TimerSettingView.swift
//  intervals
//
//  Created by Aydin Metel on 3/5/22.
//

import SwiftUI

struct TimerSettingView: View {
    
    @Binding var tMinutes: Int
    @Binding var tSeconds: Int
    
    
    var body: some View {

        GeometryReader { geometry in
            HStack {

                //Minutes
                Picker(
                    selection: $tMinutes,
                    label: Text("Minutes")) {
                        ForEach(0..<61) {number in
                            Text("\(number)" + " min")
                                .tag("\(number)")
                        }
                }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width/2, height: geometry.size.height, alignment: .center)
                    .compositingGroup()
                    .clipped()

                Spacer()
                //Seconds
                Picker(
                    selection: $tSeconds,
                    label: Text("Seconds")) {
                        ForEach(0..<61) {number in
                            Text("\(number)" + " sec")
                                .tag("\(number)")
                        }
                    }
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: geometry.size.width/2, height: geometry.size.height, alignment: .center)
                        .compositingGroup()
                        .clipped()
            }
        }
    }
}


struct TimerSettingView_Previews: PreviewProvider {
    static var previews: some View {
        TimerSettingView(tMinutes: Binding.constant(0), tSeconds: Binding.constant(0))
.previewInterfaceOrientation(.portrait)
    }
}
