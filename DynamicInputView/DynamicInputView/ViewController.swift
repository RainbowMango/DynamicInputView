//
//  ViewController.swift
//  DynamicInputView
//
//  Created by ruby on 14-11-21.
//  Copyright (c) 2014年 ruby. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myTextFiled: UITextField!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    var pickerItems = ["1", "2", "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextFiled.delegate = self
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myPickerView.frame = CGRectMake(0, 480, 320, 216)
        
        self.myTextFiled.inputView = self.myPickerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return self.pickerItems[row]
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerItems.count
    }
}

