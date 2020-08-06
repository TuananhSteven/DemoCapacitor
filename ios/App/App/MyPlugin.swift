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
    let controller = storyboard.instantiateViewController(withIdentifier: "CustomViewController") as? CustomViewController
    DispatchQueue.main.async {
        UIApplication.shared.windows.first!.rootViewController = UINavigationController(rootViewController: controller!)
        //self.bridge.viewController.present(UINavigationController(rootViewController: controller!), animated: true, completion: nil)
        controller?.cancelHandler = {
            //UIApplication.shared.windows.first!.rootViewController = CAPBridgeViewController()
            call.success([
                "value": value
            ])
        }
        
    }

    

    
  }
}
