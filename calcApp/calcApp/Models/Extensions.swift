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

extension Double{
    func cleanValue()->String{
        if self < 1000000000000000{
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
        }
        return String(self)
    }
}

