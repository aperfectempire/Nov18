//
//  View.swift
//  Nov18
//
//  Created by edwin vazquez on 1/27/15.
//  Copyright (c) 2015 A Perfect Empire. All rights reserved.
//

import UIKit

class View: UIView {
	let littleViews: [UIView] = [	//an array containing two LittleView objects
		LittleView0(),
		LittleView1()
	];

	//index in the littleViews array of the currently displayed subview: 0 or 1
	var index: Int = 0;

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
		//Make littleViews[index] the same size as this View.
		littleViews[index].frame = bounds;
		addSubview(littleViews[index]);
	}

	override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
		//toggle the index
		var newIndex: Int;
		if index == 0 {
			newIndex = 1;
		} else {
			newIndex = 0;
		}

		//Make littleViews[newIndex] the same size as this View.
		littleViews[newIndex].frame = bounds;

		UIView.transitionFromView(littleViews[index],
			toView: littleViews[newIndex],
			duration: 2.25,
			options: UIViewAnimationOptions.TransitionCurlUp,
			completion: nil);

		index = newIndex;
	}

	/*
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	override func drawRect(rect: CGRect) {
		// Drawing code
	}
	*/

}
