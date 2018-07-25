//
//  stringExtensions.swift
//  calcApp
//
//  Created by Ferdinand Becker on 25/07/2018.
//  Copyright © 2018 Ferdinand Becker. All rights reserved.
//

import UIKit

extension String{
    func display(label: UILabel){
        label.text=self
    }
    
    mutating func clear(){
        self = ""
    }
}


