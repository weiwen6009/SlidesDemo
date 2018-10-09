//
//  ViewController.swift
//  SlidesDemo
//
//  Created by Marc Chin on 2018/10/9.
//  Copyright © 2018 Marc Chin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.delegate = self
    }


}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // calculate the page index
        let pageIndex = Int(scrollView.contentOffset.x/375)
        
        // Set the page control
        pageControl.currentPage = pageIndex
    }
}
