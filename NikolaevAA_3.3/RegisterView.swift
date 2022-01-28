//
//  RegisterView.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManager: UserManager
    @State private var name = ""
    @State private var nameCount = 0
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name) {newValue in
                        nameCount = newValue.count
                }
                Text("\(nameCount)")
                    .foregroundColor(nameCount < 3 ? Color.red : Color.blue)
                    .padding(.trailing, 50)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(nameCount < 3)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
