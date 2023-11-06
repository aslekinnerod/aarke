//
//  TestView.swift
//  aarke
//
//  Created by Asle Kinnerød on 25/10/2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        
        displayAnimatedNames(names: ["hei","på","deg"])
    }
}

#Preview {
    TestView()
}

func displayAnimatedNames(names: [String]) -> some View {
    var counter = 0
    @State var currentName = ""

    let animation = Animation.linear(duration: 1)

    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        if counter < names.count {
            currentName = names[counter]
            counter += 1
        } else {
            timer.invalidate()
        }
    }

    return Text(currentName)
        .transition(.opacity)
        .animation(animation)
}
