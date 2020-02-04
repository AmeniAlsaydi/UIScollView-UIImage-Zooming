//
//  ViewController.swift
//  UIScollView-UIImage-Zooming
//
//  Created by Amy Alsaydi on 2/3/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var subwayMap: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        // step 2: set the maxZoomScale
        // provide a maximumZoomscale of greater that 1
        // 1 is the default, if not set wont be able to zoom
        
        scrollView.maximumZoomScale = 5.0
    
    }


}

// step 1:  return the view for zooming
extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subwayMap
    }
}
