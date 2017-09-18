//
//  SecondViewController.swift
//  SlideView
//
//  Created by iFlame on 9/18/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet weak var Lmod1: UIView!
    @IBOutlet weak var Rmod1: UIView!
    @IBOutlet weak var Lmod2: UIView!
    @IBOutlet weak var Rmod2: UIView!
    
    @IBOutlet weak var L1Constraints: NSLayoutConstraint!
    @IBOutlet weak var R1Constraints: NSLayoutConstraint!
    @IBOutlet weak var L2Constraints: NSLayoutConstraint!
    @IBOutlet weak var R2Constraints: NSLayoutConstraint!
    
    var mod1 = false
    var mod2 = false
    var mod3 = false
    var mod4 = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ItemClick(_ sender: Any)
    {
        if (mod1)
        {
            L1Constraints.constant = -700
            Animation()
        }
        else
        {
            L1Constraints.constant = 0
            Animation()
        }
        mod1 = !mod1
        
        if (mod2)
        {
            R1Constraints.constant = 700
            Animation()
        }
        else
        {
            R1Constraints.constant = 0
            Animation()
        }
        mod2 = !mod2
        
        if (mod3)
        {
            L2Constraints.constant = -700
            Animation()
        }
        else
        {
            L2Constraints.constant = 0
            Animation()
        }
        mod3 = !mod3
        
        if (mod4)
        {
            R2Constraints.constant = 700
            Animation()
        }
        else
        {
            R2Constraints.constant = 0
            Animation()
        }
        mod4 = !mod4
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Animation()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
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
