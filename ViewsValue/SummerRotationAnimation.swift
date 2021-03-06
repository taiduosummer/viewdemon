//
//  SummerRotationAnimation.swift
//  ViewsValue
//
//  Created by madarax on 16/2/23.
//  Copyright © 2016年 LiXia. All rights reserved.
//

import UIKit

class SummerRotationAnimation: NSObject {
    func rotaionAnimation(){
        let backVeiw = UIView(frame: CGRectMake(100,300,200,200))
//        view.addSubview(backVeiw)
        
        let pathBe = UIBezierPath(arcCenter: CGPointMake(100, 100), radius: 80, startAngle: CGFloat(-M_PI/2), endAngle: CGFloat(-(2*M_PI + M_PI/2)), clockwise: false)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.redColor().CGColor
        shapeLayer.lineDashPattern = [6,3]
        shapeLayer.fillColor = UIColor.whiteColor().CGColor
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.path = pathBe.CGPath
        backVeiw.layer.addSublayer(shapeLayer)
        
        let animaitonz = CABasicAnimation(keyPath: "transform.rotation.z")
        animaitonz.duration = 2
        animaitonz.fromValue = 0
        animaitonz.toValue = -M_PI*3/2
        backVeiw.layer.addAnimation(animaitonz, forKey: "rotaiton")
        
        let animaitonEnd = CABasicAnimation(keyPath: "strokeEnd")
        animaitonEnd.fillMode = kCAFillModeForwards
        animaitonEnd.fromValue = 0.25
        animaitonEnd.toValue = 1
        animaitonEnd.duration = 2
        shapeLayer.addAnimation(animaitonEnd, forKey: "end")
    }
}
