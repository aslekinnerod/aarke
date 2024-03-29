//
//  VideoView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI

struct VideoView: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VideoViewProvider()
            .ignoresSafeArea()
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                                .onEnded({ value in
                                    if value.translation.width < 0 {
                                        @Environment(\.presentationMode) var presentation
                                    }

                                    if value.translation.width > 0 {
                                        // right
                                    }
                                    if value.translation.height < 0 {
                                        // up
                                    }

                                    if value.translation.height > 0 {
                                        // down
                                        @Environment(\.presentationMode) var presentation
                                    }
                                }))
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
