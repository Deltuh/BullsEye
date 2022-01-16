//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Deividas Sipavicius on 1/16/22.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
   
    // Made an outlet for the HTML popup to view the games information
    @IBOutlet var webView: WKWebView!
    
    // Made an outlet for the close function for the information page | has an animation
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
    }
}
