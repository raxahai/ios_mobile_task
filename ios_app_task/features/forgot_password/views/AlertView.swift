//
//  AlertView.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 10/02/2022.
//

import SwiftUI

struct AlertView: View {
    let screenSize = UIScreen.main.bounds
    var title: String = ""
    @Binding var isShown: Bool
    @Binding var text: String
    var onDone: (String) -> Void = { _ in }
    var onCancel: () -> Void = { }
    
    
    var body: some View {
    
        VStack(spacing: 20) {
            Text(title)
                .font(.headline)
            Text("Please verify your account")
            TextField("Email address", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            HStack(spacing: 20) {
                Button("Cancel") {
                    self.isShown = false
                    self.onDone(self.text)
                }
                Spacer()
                Button("Confirm") {
                    self.isShown = false
                    self.onCancel()
                }
            }
        }
        .padding()
        .frame(width: screenSize.width * 0.7, height: screenSize.height * 0.2)
        .background(Color(#colorLiteral(red: 0.9268686175, green: 0.9416290522, blue: 0.9456014037, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .circular))
        .offset(x: isShown ? 0 : screenSize.height)
        .animation(Animation.easeInOut(duration: 0.5),value: isShown)
        .shadow(color: Color(#colorLiteral(red: 0.8596749902, green: 0.854565084, blue: 0.8636032343, alpha: 1)), radius: 6, x: -9, y: -9)

    }
}

//struct AlertView_Previews: PreviewProvider {
//    @State private var isShown: Bool = false
//    @State private var text: String = ""
//    static var previews: some
//    View {
//        AlertView(isShown: $isShown, text: $text)
//    }
//}
