//
//  ViewController.swift
//  TextKitDemo
//
//  Created by ZhijieLi on 12/11/15.
//  Copyright © 2015 ZhijieLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate {

    // MARK: - Properties
    var textView = UITextView()
    var timeIndicatorView : TimeIndicatorView!

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    deinit {

    }


    // MARK: - Private
    private func _setupViews() {
        // textView
        self.view.addSubview(textView)
        textView.frame = self.view.bounds
        textView.editable = false
        textView.selectable = false

        // TimeIndicatorView
        timeIndicatorView = TimeIndicatorView(frame: CGRectMake(10,100,100,100))
        timeIndicatorView.text = "卡卡卡卡卡卡卡卡卡卡"
        textView.addSubview(timeIndicatorView)
    }

}

