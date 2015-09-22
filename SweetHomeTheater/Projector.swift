//
//  Projector.swift
//  SweetHomeTheater
//
//  Created by Homma Takushi on 2015/09/22.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// プロジェクタ
class Projector {
  /// DVDプレーヤ
  var dvdPlayer: DvdPlayer
  
  /**
  イニシャライザ
  
  - parameter dvdPlayer: DVDプレーヤ
  
  - returns: プロジェクタ
  */
  init(dvdPlayer: DvdPlayer) {
    self.dvdPlayer = dvdPlayer
  }
  
  /**
  プロジェクタの電源を入れます
  */
  func on() {
    print("プロジェクタをスイッチオン")
  }
  
  /**
  プロジェクタの電源を切ります
  */
  func off() {
    print("プロジェクタをスイッチオフ")
  }
  
  /**
  ワイドスクリーンモードに変更します
  */
  func wideScreenMode() {
    print("プロジェクタはワイドスクリーンモード（縦横比16x9）です")
  }
}