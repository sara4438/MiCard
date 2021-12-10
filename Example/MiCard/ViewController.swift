//
//  ViewController.swift
//  MiCard
//
//  Created by sara_yang on 12/09/2021.
//  Copyright (c) 2021 sara_yang. All rights reserved.
//

import UIKit
import RxSwift
import MiCard

class ViewController: UIViewController {
    var cardView : MiCardView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cardView = MiCardView(frame: CGRect(x: 100, y: 50, width: 250, height: 375))
        self
        self.view.addSubview(self.cardView!)
        self.cardView?.setFrontImage(frontImg: UIImage(named: "pic_pokerDiamond_10_game_150x210")!)
        self.cardView?.setBackImage(backImg:  UIImage(named: "pic_poker_game_150x210")!)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reset(_ sender: Any) {
        self.cardView!.resetCard()
    }
    @IBAction func rotateToHorizontal(_ sender: Any) {
        self.cardView!.rotateToHorizontal()
    }
    
    @IBAction func rotateToVertical(_ sender: Any) {
        self.cardView!.rotateToVertcal()
    }
    
}

