//
//  CustomViewController.swift
//  App
//
//  Created by Anh Ngo Quang Tuan on 8/5/20.
//

import UIKit
import Capacitor

class CustomViewController: UIViewController {

    var cancelHandler: (() -> Void)?
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func button2(_ sender: Any) {
        self.navigationController?.pushViewController(CAPBridgeViewController(), animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if count > 0 {
            cancelHandler!()
        }
        count = count + 1
        
    }
    

}
