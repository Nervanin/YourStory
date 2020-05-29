//
//  RegistrationAssembly.swift
//  YourStory
//
//  Created by Konstantin on 24.05.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit

class RegistrationViewControllerAssembly {
    static func createView() -> UIViewController {
        
        let detailsViewController = UIStoryboard.init(name: "Registration", bundle: Bundle.main).instantiateViewController(withIdentifier: "RegistrationViewController") as! RegistrationViewController
        
        return detailsViewController
    }
}
