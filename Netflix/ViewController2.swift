//
//  ViewController2.swift
//  Netflix
//
//  Created by Trycatch on 13/03/21.
//  Copyright © 2021 Trycatch. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var counterLbl: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (t) in
            print("timer fire")

            self.count +=  1
            self.counterLbl.text = "\(self.count)"
            if (self.count == 10) {
                t.invalidate()
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
