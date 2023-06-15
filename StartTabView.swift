//
//  StartTabView.swift
//  PhotosPickerSWIFTUI
//
//  Created by dsm 5e on 15.06.2023.
//

import SwiftUI

struct StartTabView: View {
    var body: some View {
        TabView {
            SinglePicker()
                .tabItem {
                    Label("Single image", systemImage: "photo")
                }
            MultiImagePicker()
                .tabItem {
                    Label("Single image", systemImage: "photo.on.rectangle.angled")
                }
        }
    }
}

struct StartTabView_Previews: PreviewProvider {
    static var previews: some View {
            StartTabView()
    }
}
