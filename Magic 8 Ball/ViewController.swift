//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tyler Mok on 5/30/19.
//  Copyright © 2019 Tyler Mok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"];
    
    var randomBallNumber : Int = 0;

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateRandomImage();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generateRandomImage();
    }

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        generateRandomImage();
    }
    
    func generateRandomImage() {
        randomBallNumber = Int.random(in: 0 ... 4);
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

