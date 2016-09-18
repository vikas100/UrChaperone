//
//  CallUberViewController.swift
//  UberCHAP
//
//  Created by Andy Cho on 2016-09-18.
//  Copyright © 2016 Students Concerned About Party Night. All rights reserved.
//

import UIKit

class CallUberViewController: UIViewController {

    static let identifier = String(CallUberViewController)
    static let segue = "callUber"

    static func createInstance() -> CallUberViewController {
        print("Creating CallUberViewController")
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(identifier) as! CallUberViewController
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        let requestButton = UberService.createRequestButton(self)
        requestButton.sendActionsForControlEvents(.TouchUpInside)
    }

}
