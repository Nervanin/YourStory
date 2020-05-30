//
//  RestoreAssembly.swift
//  YourStory
//
//  Created by Konstantin on 28.05.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit

class RestoreViewControllerAssembly {
    static func createView() -> UIViewController {
        
        let detailsViewController = UIStoryboard.init(name: "Restore", bundle: Bundle.main).instantiateViewController(withIdentifier: "RestoreViewController") as! RestoreViewController
        
        return detailsViewController
    }
}
