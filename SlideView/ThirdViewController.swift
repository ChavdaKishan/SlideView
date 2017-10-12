//
//  ThirdViewController.swift
//  SlideView
//
//  Created by iFlame on 9/25/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{
    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    override func viewDidLoad()
    {
        super.viewDidLoad()
            btnMenuButton.target = revealViewController()
            btnMenuButton.action = "revealToggle:"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
