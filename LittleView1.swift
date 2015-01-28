//
//  LittleView1.swift
//  Nov18
//
//  Created by edwin vazquez on 1/27/15.
//  Copyright (c) 2015 A Perfect Empire. All rights reserved.
//

import UIKit

class LittleView1: UIView {

	override init() {
		super.init(frame: CGRectZero);
		//If the superview of this LittleView1 changes size,
		//make this LittleView1 change size with it.
		autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
		backgroundColor = UIColor.blueColor();
	}

	//Never called, but needed in order to compile.

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		backgroundColor = UIColor.blueColor();
	}

// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	override func drawRect(rect: CGRect) {
		
		let w: CGFloat = bounds.size.width;
		let h: CGFloat = bounds.size.height;
		
		let image: UIImage? = UIImage(named: "skull2.png");
		if image == nil {
			println("could not find skull2.png");
			return;
		}
		
		//upper left corner of image
		let point: CGPoint = CGPointMake(0.0, 0.0);
		
		
		image!.drawAtPoint(point);
	}

}

