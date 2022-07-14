//
//  ContentView.swift
//  WeatherApp
//
//  Created by 이은지 on 2022/07/07.
//

import SwiftUI

struct MainView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        NavigationView {
            VStack {
                if let location = locationManager.location {
                    Text("Your coordinates are: \(location.longitude), \(location.latitude)")
                } else {
                    if locationManager.isLoading {
                        LoadingView()
                    }
                }
            }
            .background(Color.bgColor)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image("location_icon")
                            Text("강남구, 대한민국").font(.headline)
                                .foregroundColor(.darkGrayFont)
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: { print("Clicked") }) {
                            Image(systemName: "text.alignleft")
                                .foregroundColor(.darkGrayFont)
                        }
                    }

                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { print("Clicked") }) {
                            Image(systemName: "plus")
                                .foregroundColor(.darkGrayFont)
                        }
                    }
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
