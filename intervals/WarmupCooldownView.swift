//
//  WarmupCooldownView.swift
//  intervals
//
//  Created by Aydin Metel on 3/6/22.
//

import SwiftUI

struct WarmupCooldownView: View {
    
    @Binding var warmupMinutes: Int
    
    var body: some View {
        
        VStack{
            
            Text("Warm up/Cool down time:")
            
            Picker(
                selection: $warmupMinutes,
                label: Text("Minutes")) {
                    ForEach(0..<11) {number in
                        Text("\(number)" + " min")
                            .tag(number)
                    }
                }
                .pickerStyle(WheelPickerStyle())
        }
    }
}


struct WarmupCooldownView_Previews: PreviewProvider {
    static var previews: some View {
        WarmupCooldownView(warmupMinutes: Binding.constant(0))
    }
}
