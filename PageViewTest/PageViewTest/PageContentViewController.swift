//
//  PageContentViewController.swift
//  PageViewTest
//
//  Created by Prat Tanapaisankit on 1/28/15.
//  Copyright (c) 2015 Prat Tanapaisankit. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var pageIndex: Int?
    var titleText : String!
    var imageName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundImageView.image = UIImage(named: imageName)
        self.titleLabel.text = self.titleText
        self.titleLabel.alpha = 0.1
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.titleLabel.alpha = 1.0
        })
    }
    
}
