//
//  ViewController.swift
//  SlideView
//
//  Created by iFlame on 7/11/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var LeftView: UIView!
    @IBOutlet weak var TopView: UIView!
    @IBOutlet weak var BottomView: UIView!
    @IBOutlet weak var RightView: UIView!
    
    
    @IBOutlet weak var LeadingConstraints: NSLayoutConstraint!
    @IBOutlet weak var TopConstraints: NSLayoutConstraint!
    @IBOutlet weak var BottomConstraints: NSLayoutConstraint!
    @IBOutlet weak var RightConstraints: NSLayoutConstraint!
    
    
    var Lmode = false
    var Tmode = false
    var Bmode = false
    var Rmode = false
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        LeftView.layer.shadowOpacity = 3
        LeftView.layer.shadowRadius = 8
        LeftView.layer.shadowColor = UIColor.red.cgColor
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func LeftClick(_ sender: Any)
    {
        if (Lmode)
        {
            LeadingConstraints.constant = -700
            Animation()
        }
        else
        {
            LeadingConstraints.constant = 0
            Animation()
        }
        Lmode = !Lmode
    }
    @IBAction func TopClick(_ sender: Any)
    {
        if (Tmode)
        {
            TopConstraints.constant = -1000
            Animation()
        }
        else
        {
            TopConstraints.constant = 0
            Animation()
        }
        Tmode = !Tmode
    }
    
    @IBAction func BottomClick(_ sender: Any)
    {
        if (Bmode)
        {
            BottomConstraints.constant = 1000
            Animation()
        }
        else
        {
            BottomConstraints.constant = 0
            Animation()
        }
        Bmode = !Bmode
    }
    @IBAction func RightClick(_ sender: Any)
    {
        if (Rmode)
        {
            RightConstraints.constant = 700
            Animation()
        }
        else
        {
            RightConstraints.constant = 0
            Animation()
        }
        Rmode = !Rmode
    }
    

    func Animation()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
    }
}

