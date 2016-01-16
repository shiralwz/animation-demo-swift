//  ViewController.swift
//  Animations
//  Created by WZ on 16/1/15.
//  Copyright © 2016年 iwangzheng.com. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    var count = 1
    var timer = NSTimer()
    var isAnimating = true
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBAction func nextBtn(sender: AnyObject) {
        if isAnimating == true{
           timer.invalidate()
            isAnimating = false
        }else{
             timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimaition"), userInfo: nil, repeats: true)
            isAnimating = true
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimaition"), userInfo: nil, repeats: true)
    }

    func doAnimaition(){
        if count < 4{
            count++
        }else
        {
            count = 1
        }
        Image.image = UIImage(named: "\(count)")
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func viewDidLayoutSubviews() {
       // Image.center = CGPointMake(Image.center.x - 400, Image.center.y) //从左往右
        //Image.alpha = 0 //从无到有
        Image.frame = CGRectMake(100, 20, 0, 0)//改变大小
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1,animations: { () -> Void in
            //self.Image.center = CGPointMake(self.Image.center.x + 400, self.Image.center.y)
           // self.Image.alpha = 1
            self.Image.frame = CGRectMake(100, 20, 100, 200)
        })
    }
    */


}

