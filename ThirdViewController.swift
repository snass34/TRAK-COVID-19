//
//  ThirdViewController.swift
//  LA Hacks 2020
//
//  Created by Jessica D on 3/28/20.
//  Copyright © 2020 Jessica D. All rights reserved.
//

import UIKit
import SafariServices

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func URLButton(_ sender: UIButton) {
        guard let url = URL(string: "https://www.worldometers.info/coronavirus/") else {
            return
        }
            let vc = SFSafariViewController(url: url)
            self.present(vc, animated: true)
    }
    
    @IBAction func CDCButton(_ sender: UIButton) {
        guard let url = URL(string: "https://www.cdc.gov/coronavirus/2019-ncov/index.html") else {
            return
        }
            let vc = SFSafariViewController(url: url)
            self.present(vc, animated: true)
    }
    
    @IBAction func WHOButton(_ sender: UIButton) {
        guard let url = URL(string: "https://www.who.int/health-topics/coronavirus#tab=tab_1") else {
            return
        }
            let vc = SFSafariViewController(url: url)
            self.present(vc, animated: true)
    }
    
    @IBAction func nprButton(_ sender: UIButton) {
        guard let url = URL(string: "https://www.npr.org/series/812054919/the-coronavirus-crisis") else {
            return
        }
            let vc = SFSafariViewController(url: url)
            self.present(vc, animated: true)
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
