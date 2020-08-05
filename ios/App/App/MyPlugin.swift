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
    let controller = storyboard.instantiateViewController(withIdentifier: "CustomViewController")
    DispatchQueue.main.async {
        self.bridge.viewController.present(controller, animated: true, completion: nil)
    }

    call.success([
        "value": value
    ])
    
    
  }
}
