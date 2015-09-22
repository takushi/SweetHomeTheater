//
//  DvdPlayer.swift
//  SweetHomeTheater
//
//  Created by Homma Takushi on 2015/09/22.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// DVDプレーヤ
class DvdPlayer {
  /// アンプ
  var amplifier: Amplifier
  /// 再生中の映画
  var movie: String
  
  /**
  イニシャライザ
  
  - parameter amplifier: アンプ
  
  - returns: DVDプレーヤ
  */
  init(amplifier: Amplifier) {
    self.amplifier = amplifier
    self.movie = String()
  }
  
  /**
  電源を入れます
  */
  func on() {
    print("DVDプレーヤをスイッチオン")
  }
  
  /**
  電源を切ります
  */
  func off() {
    print("DVDプレーヤをスイッチオフ")
  }
  
  /**
  DVDを再生します
  
  - parameter movie: 映画
  */
  func play(movie: String) {
    self.movie = movie
    print("DVDプレーヤは「\(self.movie)」を再生")
  }
  
  /**
  DVDを停止します
  */
  func stop() {
    print("DVDプレーヤは「\(self.movie)」を停止")
    self.movie = String()
  }
  
  /**
  映画を取り出します
  */
  func eject() {
    print("DVDプレーヤから取り出し")
  }
}