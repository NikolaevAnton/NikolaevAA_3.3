//
//  CustomButton.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import SwiftUI

struct CustomButton: View {
    var startButton: Bool
    
    @ObservedObject var timer: TimeCounter
    @EnvironmentObject private var userManager: UserManager
    
    private func logOut() {
        userManager.isRegister.toggle()
    }
    
    var body: some View {
        Button(action: startButton ? timer.startTimer : logOut) {
            Text(startButton ? timer.buttonTitle : "Log Out")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(startButton ? Color.red : Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(startButton: true, timer: TimeCounter())
    }
}
