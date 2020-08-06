//
//  MyPlugin.swift
//  App
//
//  Created by Anh Ngo Quang Tuan on 8/5/20.
//

import Capacitor

@objc(MyPlugin)
public class MyPlugin: CAPPlugin {
  @objc func echo(_ call: CAPPluginCall) {
    let value = call.getString("value") ?? ""
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    DispatchQueue.main.async {
        let controller = storyboard.instantiateViewController(withIdentifier: "CustomViewController") as? CustomViewController
        UIApplication.shared.windows.first!.rootViewController = UINavigationController(rootViewController: controller!)

        controller?.cancelHandler = {
            UIApplication.shared.windows.first!.rootViewController = self.bridge.viewController
            call.success([
                "value": value
            ])
        }
        
    }

    

    
  }
}
