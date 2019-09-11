//
//  LogoView.swift
//  logo
//
//  Created by Joshua Sharp on 9/11/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {


    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let viewCenter = CGPoint(x: rect.size.width / 2, y: rect.size.height / 2)
        let circleLineWidth: CGFloat = 4
        let circleRadius = rect.size.width - (circleLineWidth * 2)
        let circleRect = CGRect(x: rect.origin.x + circleLineWidth,
                                y: viewCenter.y - circleRadius / 2,
                                width: circleRadius,
                                height: circleRadius)
        let circleColor = UIColor.black.cgColor
        
        
        
        let context = UIGraphicsGetCurrentContext()
        guard let uwcontext = context else {return}
        
        uwcontext.move(to: viewCenter)
        uwcontext.addEllipse(in: CGRect(origin: viewCenter, size: CGSize(width: 4, height: 4)))
        uwcontext.setFillColor(UIColor.black.cgColor)
        uwcontext.strokePath()
        
        uwcontext.addEllipse(in: circleRect)
        uwcontext.setStrokeColor(circleColor)
        uwcontext.setLineWidth(circleLineWidth)
        uwcontext.strokePath()
        
        let triangleTopPoint = CGPoint(x: viewCenter.x, y: viewCenter.y - circleRadius / 2)
        let triangleLeftPoint = CGPoint(x: circleRect.minX + circleLineWidth + 26, y: viewCenter.y + (circleRadius / 4))
        let triangleRightPoint = CGPoint(x: circleRect.minX + circleLineWidth + circleRadius - 33, y: viewCenter.y + (circleRadius / 4))
        
        uwcontext.move(to: triangleTopPoint)
        uwcontext.addLine(to: triangleLeftPoint)
        uwcontext.addLine(to: triangleRightPoint)
        uwcontext.addLine(to: triangleTopPoint)
        uwcontext.strokePath()
    }


}
