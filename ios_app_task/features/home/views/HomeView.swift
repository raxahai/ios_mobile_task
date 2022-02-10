//
//  HomeView.swift
//  ios_app_task
//
//  Created by Syed Raza Haider on 10/02/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.gray.background().ignoresSafeArea()
            Text("Hello to home")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
