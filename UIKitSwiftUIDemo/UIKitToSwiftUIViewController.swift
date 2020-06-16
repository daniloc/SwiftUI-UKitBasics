//
//  UIKitToSwiftUIViewController.swift
//  UIKitSwiftUIDemo
//
//  Created by Danilo Campos on 6/16/20.
//  Copyright © 2020 Danilo Campos. See license file.
//

import UIKit
import SwiftUI

class UIKitToSwiftUIViewController: UIViewController, ObservableObject {

    
    @IBOutlet weak var swiftUIContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftUIView = SwiftUILightbulb(viewController: self)
        let hostingController = UIHostingController(rootView: swiftUIView)
        
        hostingController.view.frame = swiftUIContainerView.bounds
        self.swiftUIContainerView.addSubview(hostingController.view)
        

    }
    
    @Published var switchIsOn = true
    
    @IBAction func handleSwitch(_ sender: UISwitch) {
        self.switchIsOn = sender.isOn
    }
    
}
