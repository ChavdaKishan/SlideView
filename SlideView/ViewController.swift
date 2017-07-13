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
    
    @IBOutlet weak var VisualEffectView: UIVisualEffectView!
    
    var Lmode = false
    var Tmode = false
    var Bmode = false
    var Rmode = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        LeftView.layer.shadowOpacity = 2
        LeftView.layer.shadowRadius = 8
        LeftView.layer.shadowColor = UIColor.red.cgColor
        
        TopView.layer.shadowOpacity = 2
        TopView.layer.shadowRadius = 8
        TopView.layer.shadowColor = UIColor.red.cgColor
        
        BottomView.layer.shadowOpacity = 2
        BottomView.layer.shadowRadius = 8
        BottomView.layer.shadowColor = UIColor.red.cgColor
        
        RightView.layer.shadowOpacity = 2
        RightView.layer.shadowRadius = 8
        RightView.layer.shadowColor = UIColor.red.cgColor
        
        VisualEffectView.isHidden = true
        
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
            Animation1()
        }
        else
        {
            LeadingConstraints.constant = 0
            Animation()
            Animation2()
        }
        Lmode = !Lmode
    }
    @IBAction func TopClick(_ sender: Any)
    {
        if (Tmode)
        {
            TopConstraints.constant = -1000
            TopView.isHidden = true
            Animation()
            Animation1()
        }
        else
        {
            TopConstraints.constant = 0
            TopView.isHidden = false
            Animation()
            Animation2()
        }
        Tmode = !Tmode
    }
    @IBAction func BottomClick(_ sender: Any)
    {
        if (Bmode)
        {
            BottomConstraints.constant = 1000
            Animation()
            Animation1()
        }
        else
        {
            BottomConstraints.constant = 0
            Animation()
            Animation2()
        }
        Bmode = !Bmode
    }
    @IBAction func RightClick(_ sender: Any)
    {
        if (Rmode)
        {
            RightConstraints.constant = 700
            Animation()
            Animation1()
        }
        else
        {
            RightConstraints.constant = 0
            Animation()
            Animation2()
        }
        Rmode = !Rmode
    }

    func Animation()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func Animation1()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.VisualEffectView.isHidden = true
        })
    }
    
    func Animation2()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.VisualEffectView.isHidden = false
        })
    }
}
