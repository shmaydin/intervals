//
//  SetsPickerView.swift
//  intervals
//
//  Created by Aydin Metel on 3/6/22.
//

import SwiftUI

struct SetsPickerView: View {
    
    //@Binding var numSets: Int
    
    @EnvironmentObject var timerData: TimerSetting
    
    var body: some View {

        VStack{
            
            Text("Number of sets:")
            
            Picker(
                selection: $timerData.numSets,
                label: Text("Sets")) {
                    ForEach(0..<11) {number in
                        Text("\(number)" + " Sets")
                            .tag(number)
                    }
                }
                .pickerStyle(WheelPickerStyle())
        }
    }
}

struct SetsPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SetsPickerView()
    }
}
