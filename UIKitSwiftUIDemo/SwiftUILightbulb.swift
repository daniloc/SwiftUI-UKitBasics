//
//  SwiftUILightbulb.swift
//  UIKitSwiftUIDemo
//
//  Created by Danilo Campos on 6/16/20.
//  Copyright © 2020 Danilo Campos. See license file.
//

import SwiftUI

struct SwiftUILightbulb: View {
    
    @ObservedObject var viewController: UIKitToSwiftUIViewController
    
    var body: some View {
        ZStack {
            Color(viewController.switchIsOn ? .white : .black)
            Image(systemName: viewController.switchIsOn ?  "lightbulb" : "lightbulb.fill")
                .shadow(color: viewController.switchIsOn ? .yellow : .clear, radius: 8, x: 0, y: 0)
                .foregroundColor(viewController.switchIsOn ? .yellow : .gray)
                .font(.system(size: 30))
        }.animation(.easeInOut)
    }
}

struct SwiftUIObservingUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILightbulb(viewController: UIKitToSwiftUIViewController())
    }
}
