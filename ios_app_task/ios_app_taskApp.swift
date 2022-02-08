//
//  ios_app_taskApp.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import SwiftUI

@main
struct ios_app_taskApp: App {
    @State private var isActive: Bool = false
    var body: some Scene {
        WindowGroup {
            VStack {
                if self.isActive{
                    LoginView()
                }else{
                    SplashView()
                }
                
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}
