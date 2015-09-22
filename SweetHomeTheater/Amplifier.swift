//
//  Amplifier.swift
//  SweetHomeTheater
//
//  Created by Homma Takushi on 2015/09/22.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// アンプ
class Amplifier {
  /// DVDプレーヤ
  var dvd: DvdPlayer!
  /// 音量
  var volume: Int
  
  /**
  イニシャライザ
  
  - returns: アンプ
  */
  init () {
    self.volume = 11
  }
  
  /**
  電源を入れます
  */
  func on() {
    print("アンプをスイッチオン")
  }
  
  /**
  電源を切ります
  */
  func off() {
    print("アンプをスイッチオフ")
  }
  
  /**
  DVDプレーヤに接続します
  
  - parameter dvd: DVDプレーヤ
  */
  func setDVD(dvd: DvdPlayer) {
    self.dvd = dvd
    print("アンプを最高級DVDプレーヤに接続します")
  }
  
  /**
  サラウンド音声の電源を入れます
  */
  func setSurroundSound() {
    print("アンプのサラウンド音声をスイッチオン（5スピーカ、1サブウーファ）")
  }
  
  /**
  音量を設定します
  
  - parameter volume: 音量
  */
  func setVolume(volume: Int) {
    self.volume = volume
    print("アンプの音量を\(self.volume)に設定")
  }
}