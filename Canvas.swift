//
//  Canvas.swift
//  DrawSomething
//
//  Created by CHAK HO EROS YIP on 19/12/2017.
//  Copyright © 2017 EROS YIP. All rights reserved.
//

import UIKit

class Canvas: UIView {

    var lineColor = UIColor.white
    var linewidth:CGFloat = 10
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startingPoint = touches.first?.location(in: self)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchPoint = touches.first?.location(in: self)
        path = UIBezierPath()
        path.move(to: startingPoint)
        path.addLine(to: touchPoint)
        startingPoint = touchPoint
        draw()
        
    }
    func draw()  {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = linewidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
        
    }
    func clearCanvas()  {
        path.removeAllPoints()
        self.layer.sublayers = nil
        self.setNeedsDisplay()
        
        
    }

}
