//
//  SwiftUITalkingToUIKit.swift
//  UIKitSwiftUIDemo
//
//  Created by Danilo Campos on 6/16/20.
//  Copyright © 2020 Danilo Campos. See license file.
//

import SwiftUI

struct SwiftUISwitchToggle: View {
    
    let externalSwitch: UISwitch
    
    var body: some View {
        Button(action: {
            self.externalSwitch.setOn(!self.externalSwitch.isOn, animated: true)
        }) {
            Text("Toggle Switch")
        }
    }
}

struct SwiftUITalkingToUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISwitchToggle(externalSwitch: UISwitch())
    }
}
