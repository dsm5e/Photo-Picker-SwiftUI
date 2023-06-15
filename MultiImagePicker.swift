//
//  MultiImagePicker.swift
//  PhotosPickerSWIFTUI
//
//  Created by dsm 5e on 15.06.2023.
//

import SwiftUI
import PhotosUI

struct MultiImagePicker: View {
    @StateObject var picker = ImagePickerSUI()
    let columns = [GridItem(.adaptive(minimum: 100))]
    var body: some View {
        NavigationStack {
            VStack {
                if !picker.images.isEmpty {
                    ScrollView {
                        TabView {
                            ForEach(0..<picker.images.count, id: \.self) { index in
                                ZStack {
                                    picker.images[index]
                                        .resizable()
                                        .scaledToFill()
                                        
                                    Button {
                                        picker.images.remove(at: index)
                                    } label: {
                                        Image(systemName: "trash.fill")
                                            .foregroundColor(.red)
                                    }
                                    .offset(x: 100, y: -100)

                                }
                            }
                        }
                        .frame(width: 300, height: 300)
                        .tabViewStyle(.page)
                    }
                } else {
                    Text("MULTIPLE!")
                }
            }
            .navigationTitle("MuliImagePicker")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PhotosPicker(selection: $picker.imageSelections, maxSelectionCount: 5) {
                        Image(systemName: "plus.app")
                    }
                }
            }
        }
    }
}

struct MultiImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MultiImagePicker()
        }
    }
}
