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
        
        square(value: 10)
        
    }
    func drawBox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor, cornerradius: CGFloat) {
        let box = UIView()
        box.backgroundColor = color
        box.frame = CGRect (x: x, y: y, width: width, height: height)
        box.layer.cornerRadius = cornerradius
        view.addSubview(box)
    }
    
    func square (value: Int) {
        let padding: CGFloat = 20
        var xPos: CGFloat = 50
        var yPos: CGFloat = 50
        var boxSize: CGFloat = 300
        var startPos: CGFloat = 300
        var corner: CGFloat = 300
        var color: UIColor = UIColor.blue
        for i in 0..<value {
            if i % 2 == 0 {
                color = UIColor.blue
            } else {
                color = UIColor.red
            }
            boxSize -= padding
            startPos += padding/2
            xPos = startPos
            yPos = startPos
            corner = boxSize/2
            drawBox(x: xPos, y: yPos, width: boxSize, height: boxSize, color: color, cornerradius: corner)
        }
    }
}
