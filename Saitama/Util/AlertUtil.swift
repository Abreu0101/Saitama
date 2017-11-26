//
//  Alert.swift
//  Saitama
//
//  Created by Roberto Abreu on 11/25/17.
//  Copyright © 2017 homeappzz. All rights reserved.
//

import UIKit

struct AlertUtil {
    
    static func showError(_ error: NSError, from controller: UIViewController) {
        let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        controller.present(alertController, animated: true, completion: nil)
    }
    
}
