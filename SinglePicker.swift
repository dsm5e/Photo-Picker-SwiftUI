//
//  SinglePicker.swift
//  PhotosPickerSWIFTUI
//
//  Created by dsm 5e on 15.06.2023.
//

import SwiftUI
import PhotosUI

struct SinglePicker: View {
    @StateObject var picker = ImagePickerSUI()
    
    var body: some View {
        NavigationStack {
            VStack {
                if let image = picker.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .padding()
                } else {
                    Text("Tap to menu bar to select photo!")
                }
            }
            .navigationTitle("SimglePicker")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PhotosPicker(selection: $picker.imageSelection, matching: .images, photoLibrary: .shared()) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct SinglePicker_Previews: PreviewProvider {
    static var previews: some View {
            SinglePicker()
    }
}
