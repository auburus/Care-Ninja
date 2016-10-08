//
//  LoginVC.swift
//  Care Ninja
//
//  Created by Roxana Jula on 08/10/16.
//  Copyright © 2016 Hack UPC. All rights reserved.
//


import UIKit

class LoginVC: VideoSplashViewController
{
    @IBOutlet weak var createNewAccountButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupVideoBackground()
    }
    
    private func setupVideoBackground()
    {
        let url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("login", ofType: "mp4")!)
        
        videoFrame = view.frame
        fillMode = .ResizeAspectFill
        alwaysRepeat = true
        sound = true
        startTime = 12.0
        duration = 9.0
        alpha = 0.7
        backgroundColor = UIColor.whiteColor()
        
        contentURL = url
        view.userInteractionEnabled = false
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}