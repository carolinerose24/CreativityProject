//
//  DrawingView.swift
//  CreativityProject
//
//  Created by Jarman, Caroline on 11/1/18.
//  Copyright © 2018 ctec. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    
    // Only override draw() if you perform custom drawing ->which we do want to do
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
     {
        createStickFigure().stroke()
        drawTurtle()
        drawSomething().stroke()
        // Drawing code
     }
 
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        //when a return type of (uibez...) must make a variable of that inside {} and return it
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint (x: 200, y: 200),
                      radius: CGFloat (20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine (to: CGPoint (x: 220, y: 240))
        figure.move (to: CGPoint (x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move (to: CGPoint (x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))



        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint (x: 50, y: 250))
        logo.addLine(to: CGPoint (x: 100, y: 300))
        logo.addLine(to: CGPoint (x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawSomething() -> UIBezierPath
    {
        let figure1 : UIBezierPath = UIBezierPath()
        UIColor.black.setStroke()
        figure1.lineWidth = 3.0
        
        figure1.addArc(withCenter: CGPoint (x: 100, y: 100),
                      radius: CGFloat (20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure1.move (to: CGPoint(x: 80, y: 90))
        figure1.addLine (to: CGPoint(x: 120, y: 90))
        figure1.move (to: CGPoint(x: 90, y: 90))
        figure1.addLine (to: CGPoint(x: 90, y: 100))
        figure1.addLine (to: CGPoint(x: 95, y: 100))
        figure1.addLine (to: CGPoint(x: 95, y: 90))



        return figure1
        

    }
    
    
}
