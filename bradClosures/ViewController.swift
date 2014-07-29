//
//  ViewController.swift
//  bradClosures
//
//  Created by Bradley Johnson on 7/28/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var myClosure : () ->(Void)
    
    var doSomethingClosure : () -> (String)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    init(coder aDecoder: NSCoder!)  {
        
        
        var localInt = 3

    self.myClosure = {() -> Void
        in
        println(localInt)
        
        }
        
        self.doSomethingClosure = fetchName
         super.init(coder: aDecoder)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.myClosure()
        
        var myColorChanger = self.colorChanger(UIColor.blueColor())
        myColorChanger(self.view)
    }
    
    func colorChanger(color : UIColor) ->  (UIView) -> Void{
    
        
        func changeColorOnView(view : UIView) ->Void {
            
            view.backgroundColor = color
            
        }
        
        return changeColorOnView
    }
}

func fetchName() -> String {
    return "hello"
}

