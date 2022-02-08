//
//  SplashView.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 08/02/2022.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("splashLogo")
            .resizable()
        .aspectRatio(contentMode: .fit)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
