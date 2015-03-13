//
//  ViewController.swift
//  ScrollView_Button
//
//  Created by 松下慶大 on 2015/03/09.
//  Copyright (c) 2015年 matsushita keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myScorllView: UIScrollView!

    var coverView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coverView.frame = CGRectMake(0, 0, myImageView.frame.width, myImageView.frame.height)
        coverView.autoresizingMask = UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.FlexibleWidth
        myImageView.addSubview(coverView)
        
        
        //スクロールビュー
        myScorllView.contentSize = CGSizeMake(730, 150)
        myScorllView.backgroundColor = UIColor.blackColor()
        
        //View Controllerの背景色
        self.view.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        
        //ボタン生成
        makeEffectGroup(CGFloat(10), action: "tappedOrign:", color: UIColor.clearColor(), text: "Original")
        makeEffectGroup(CGFloat(100), action: "tappedRed:", color: UIColor.redColor(), text: "Red")
        makeEffectGroup(CGFloat(190), action: "tappedGreen:", color: UIColor.greenColor(), text: "Green")
        makeEffectGroup(CGFloat(280), action: "tappedBlue:", color: UIColor.blueColor(), text: "Blue")
        makeEffectGroup(CGFloat(370), action: "tappedYellow:", color: UIColor.yellowColor(), text: "Yellow")
        makeEffectGroup(CGFloat(460), action: "tappedPurple:", color: UIColor.purpleColor(), text: "Purple")
        makeEffectGroup(CGFloat(550), action: "tappedCyan:", color: UIColor.cyanColor(), text: "Cyan")
        makeEffectGroup(CGFloat(640), action: "tappedWhite:", color: UIColor.whiteColor(), text: "White")

        myImageView.image = UIImage(named: "cat.png")
    }
    
    //エフェクトのグループをセットする関数
    func makeEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String){
        var originalBtn = makeButton(x, action: action)
        myScorllView.addSubview(originalBtn)
        var originalBtnCoverView = makeButtonCoverView(color)
        originalBtn.addSubview(originalBtnCoverView)
        var originalLabel = makeEffectLael(x, text: text)
        myScorllView.addSubview(originalLabel)
    }
    
    //ボタン生成する関数
    func makeButton(x: CGFloat, action: Selector) -> UIButton{
        var button = UIButton()
        button.frame = CGRectMake(x, 30, 80, 80)
        button.addTarget(self, action: action, forControlEvents:.TouchUpInside)
        button.setBackgroundImage(UIImage(named: "cat.png"), forState: UIControlState.Normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 3.0
        return button
    }
    
    //ボタンをカバーするビューを生成する関数
    func makeButtonCoverView(color: UIColor) -> UIView{
        var buttonCoverView = UIView()
        buttonCoverView.frame = CGRectMake(0, 0, 80, 80)
        buttonCoverView.backgroundColor = color
        buttonCoverView.alpha = 0.1
        buttonCoverView.userInteractionEnabled = false
        return buttonCoverView
    }
    
    //ラベルの生成する関数
    func makeEffectLael(x: CGFloat, text: String) -> UILabel{
        var effectLabel = UILabel()
        effectLabel.frame =  CGRectMake(x, 110, 80, 20)
        effectLabel.text = text
        effectLabel.font = UIFont(name: "Helvetica-Light",size: CGFloat(15))
        effectLabel.textAlignment = NSTextAlignment.Center
        effectLabel.textColor = UIColor.whiteColor()
        return effectLabel
    }
    
    
    //以下ボタンタップ時のメソッド
    @IBAction func  tappedOrign(sender: AnyObject){
        coverView.backgroundColor = UIColor.clearColor()
    }
    
    @IBAction func  tappedRed(sender: AnyObject){
        coverView.backgroundColor = UIColor.redColor()
        coverView.alpha = 0.1
    }
    
    @IBAction func  tappedGreen(sender: AnyObject){
        coverView.backgroundColor = UIColor.greenColor()
        coverView.alpha = 0.1
    }
    
    @IBAction func  tappedBlue(sender: AnyObject){
        coverView.backgroundColor = UIColor.blueColor()
        coverView.alpha = 0.1
    }
    
    @IBAction func  tappedYellow(sender: AnyObject){
        coverView.backgroundColor = UIColor.yellowColor()
        coverView.alpha = 0.1
    }
    
    @IBAction func  tappedPurple(sender: AnyObject){
        coverView.backgroundColor = UIColor.purpleColor()
        coverView.alpha = 0.1
    }
    
    @IBAction func  tappedCyan(sender: AnyObject){
        coverView.backgroundColor = UIColor.cyanColor()
        coverView.alpha = 0.1
    }
    
    @IBAction func  tappedWhite(sender: AnyObject){
        coverView.backgroundColor = UIColor.whiteColor()
        coverView.alpha = 0.1
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

