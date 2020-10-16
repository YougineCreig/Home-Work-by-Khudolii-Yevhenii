//
//  ViewController.swift
//  Home Work 2
//
//  Created by Yevhenii on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        line(value: 3)
    }
    
    func drawBox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        let box = UIView()
        box.backgroundColor = UIColor.blue
        box.frame = CGRect (x: x, y: y, width: width, height: height)
        view.addSubview(box)
    }
    
    func line (value: Int) {
        let padding: CGFloat = 20
        var xPos: CGFloat = 50
        let boxSize: CGFloat = 50
        for _ in 0..<value {
            drawBox(x: xPos, y: 50, width: 50, height: 50)
            xPos += padding + boxSize
        }
    }
}
