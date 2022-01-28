//
//  ContentView.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            CustomButton(startButton: true, timer: timer)
            Spacer()
            CustomButton(startButton: false, timer: timer)
                .padding(.bottom, 20)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
