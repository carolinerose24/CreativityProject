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
    
        // Drawing code
     }
 
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        //when a return type of (uibez...) must make a variable of that inside {} and return it
        
        return figure
    }
    
    
}
