//
//  TheaterLights.swift
//  SweetHomeTheater
//
//  Created by Homma Takushi on 2015/09/22.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// 照明
class TheaterLights {
  /**
  照明を点けます
  */
  func on() {
    print("シアタの天井の照明をスイッチオン")
  }
  
  /**
  照明を消します
  */
  func off() {
    print("シアタの天井の照明をスイッチオフ")
  }
  
  /**
  明るさを調整します
  
  - parameter brightness: 明るさ（%）
  */
  func dim(brightness: Int) {
    print("シアタの天井照明を\(brightness)%まで暗くします")
  }
}