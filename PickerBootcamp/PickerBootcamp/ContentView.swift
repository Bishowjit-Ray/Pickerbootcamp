//
//  ContentView.swift
//  PickerBootcamp
//
//  Created by Bishowjit Ray on 17/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var selection: String = "Most Liked"
    let filterOptions: [String] = ["Most populer","Most Recent","Most Liked"]
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes:[NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        
        Picker(
            
            selection: $selection,
               
               label: Text("Picker"),
               
               content: {
                   ForEach(filterOptions.indices) { index in
                       Text(filterOptions[index])
                           .tag(filterOptions[index])
                   }
        })
        .pickerStyle(SegmentedPickerStyle())
        //.background(Color.red)
        
        
        
        
        
        
//        VStack{
//
//            HStack{
//                Text("Age:")
//                Text(selection)
//
//            }
//            .font(.title)
//            .foregroundColor(Color.pink)
//            Picker(selection: $selection,
//               label: Text("Picker"),
//               content: {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .font(.title)
//                        .foregroundColor(Color.red)
//                        .tag("\(number)")
//
//                }
//         })
//            .pickerStyle(WheelPickerStyle())
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
