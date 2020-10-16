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
        stairs(value: 4)
    }
    
    func drawBox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        let box = UIView()
        box.backgroundColor = UIColor.blue
        box.frame = CGRect (x: x, y: y, width: width, height: height)
        view.addSubview(box)
    }
    
    func stairs (value: Int) {
        let padding: CGFloat = 20
        var xPos: CGFloat = 300
        var yPos: CGFloat = 50
        let boxSize: CGFloat = 50
        var step = 1
        var startPos: CGFloat = 300
        for _ in 0..<value {
            for _ in 0..<step {
                drawBox(x: xPos, y: yPos, width: boxSize, height: boxSize)
                xPos += padding + boxSize
                
            }
            startPos -= (boxSize + padding)/2
            xPos = startPos
            step += 1
            yPos += padding + boxSize
        }
    }
}

