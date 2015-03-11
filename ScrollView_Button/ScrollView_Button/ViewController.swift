//
//  ViewController.swift
//  ScrollView_Button
//
//  Created by 松下慶大 on 2015/03/09.
//  Copyright (c) 2015年 matsushita keita. All rights reserved.
//

import UIKit
import CoreImage


class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myScorllView: UIScrollView!

    var coverView = UIView(frame: CGRectMake(0, 0, 374, 374))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //スクロールビュー
        myScorllView.contentSize = CGSizeMake(self.view.frame.width*2, 150)
        myScorllView.backgroundColor = UIColor.blackColor()
        
        //View Controllerの背景色
        self.view.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        
        //ボタン生成
        generateButton(10, title: "Original", action: "tappedOrign:", color: UIColor.whiteColor())
        generateButton(100, title: "Red", action: "tappedRed:", color: UIColor.redColor())
        generateButton(190, title: "Green", action: "tappedGreen:", color: UIColor.greenColor())
        generateButton(280, title: "Blue", action: "tappedBlue:", color: UIColor.blueColor())
        generateButton(370, title: "Yellow", action: "tappedYellow:", color: UIColor.yellowColor())
        generateButton(460, title: "Purple", action: "tappedPurple:", color: UIColor.purpleColor())
        generateButton(550, title: "Cyan", action: "tappedCyan:", color: UIColor.cyanColor())
        generateButton(640, title: "White", action: "tappedWhite:", color: UIColor.whiteColor())
        myImageView.image = UIImage(named: "pug.png")
        
    }
    
    //ボタン生成するメソッド
    func generateButton(x: CGFloat, title: String, action: Selector, color :UIColor){
        var button = UIButton()
        button.frame = CGRectMake(x, 30, 80, 80)
        button.backgroundColor = UIColor(red: 0.14, green: 0.30, blue: 0.46, alpha: 1.0)
        button.setTitle(title, forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica-Light",size: CGFloat(20))
        button.addTarget(self, action: action, forControlEvents:.TouchUpInside)
        button.layer.cornerRadius = 3.0
        button.layer.borderColor = UIColor.whiteColor().CGColor
        button.setBackgroundImage(UIImage(named: "pug.png"), forState: UIControlState.Normal)
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = color.CGColor
        myScorllView.addSubview(button)
        
    }
    
    
    //以下ボタンタップ時のメソッド
    @IBAction func  tappedOrign(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        myImageView.addSubview(coverView)
        
    }
    
    @IBAction func  tappedRed(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.1)
        myImageView.addSubview(coverView)
        
    }
    
    @IBAction func  tappedGreen(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.1)
        myImageView.addSubview(coverView)
        
    }
    
    @IBAction func  tappedBlue(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.1)
        myImageView.addSubview(coverView)
    }
    
    @IBAction func  tappedYellow(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.1)
        myImageView.addSubview(coverView)
    }
    
    @IBAction func  tappedPurple(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 1.0, alpha: 0.1)
        myImageView.addSubview(coverView)
    }
    
    @IBAction func  tappedCyan(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 0.1)
        myImageView.addSubview(coverView)
    }
    
    @IBAction func  tappedWhite(sender: AnyObject){
        
        coverView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        myImageView.addSubview(coverView)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

