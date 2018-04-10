//
//  AdjectiveLable.swift
//  Lable+Adjective
//
//  Created by RRD on 2018/4/10.
//  Copyright © 2018年 ZYF. All rights reserved.
//

import UIKit

open class AdjectiveLable: UILabel {
    var maskLayer: CAShapeLayer?
    var borderPath: UIBezierPath?
    
    override init(frame: CGRect) {
       super.init(frame: frame)
        maskLayer = CAShapeLayer()
        self.layer.mask = self.maskLayer
        self.borderPath = UIBezierPath()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        maskLayer?.frame = self.bounds
        //path 起点
        borderPath?.move(to: CGPoint(x: 0,y: 10))
        borderPath?.addQuadCurve(to: CGPoint(x:10, y:0), controlPoint: CGPoint(x:0 ,y:0))
        borderPath?.addLine(to: CGPoint(x:self.bounds.size.width-10, y:0))
        borderPath?.addQuadCurve(to: CGPoint(x:self.bounds.size.width, y:10), controlPoint: CGPoint(x:self.bounds.size.width, y:0))
        borderPath?.addLine(to: CGPoint(x: self.bounds.size.width, y:self.bounds.size.height))
        
        //底部小三角
        borderPath?.addLine(to: CGPoint(x:self.bounds.size.width/2+5, y:self.bounds.size.height))
        borderPath?.addLine(to: CGPoint(x:self.bounds.size.width/2,y:self.bounds.size.height-5))
        borderPath?.addLine(to: CGPoint(x:self.bounds.size.width/2 - 5 ,y:self.bounds.size.height))
        borderPath?.addLine(to: CGPoint(x:0, y:self.bounds.size.height))
        borderPath?.addLine(to: CGPoint(x:0, y:10))
        
        maskLayer?.path = borderPath?.cgPath
        
    }
}

