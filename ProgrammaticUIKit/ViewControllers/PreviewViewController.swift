//
//  PreviewViewController.swift
//  ProgrammaticUIKit
//
//  Created by Arman Karimov on 08.05.2022.
//

import UIKit

final class PreviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let helloWorld = UILabel(frame: .init(x: 0, y: 0, width: 100, height: 20))
        helloWorld.text = "Hello world"
        helloWorld.textColor = .blue
        view.addSubview(helloWorld)
        
        helloWorld.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helloWorld.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloWorld.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}


// - MARK: Preview Extension
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PreviewVC: PreviewProvider {

    static var previews: some View {
        // view controller using programmatic UI
        PreviewViewController().toPreview()
    }
}
#endif

// - MARK: Using storyboard
// If you are using Storyboard for the view controller, you can instantiate it using the Storyboard ID.

//#if DEBUG
//import SwiftUI
//
//@available(iOS 13, *)
//struct PreviewVC: PreviewProvider {
//    static var previews: some View {
//        // Assuming your storyboard file name is "Main"
//        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PreviewViewController").toPreview()
//    }
//}
//#endif


// - MARK: Previewing multiple devices
//#if DEBUG
//import SwiftUI
//
//@available(iOS 13, *)
//struct PreviewVC: PreviewProvider {
//    static var devices = ["iPhone 8", "iPhone 11 Pro Max"]
//
//    static var previews: some View {
//        ForEach(devices, id: \.self) { deviceName in
//            PreviewViewController().toPreview().previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//        }
//    }
//}
//#endif
