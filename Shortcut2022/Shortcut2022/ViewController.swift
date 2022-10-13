//
//  ViewController.swift
//  Shortcut2022
//
//  Created by Asle Kinnerød on 13/10/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var web: WKWebView!


    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.shortcut.io")
           web.load(URLRequest(url: url!))
    }


}

