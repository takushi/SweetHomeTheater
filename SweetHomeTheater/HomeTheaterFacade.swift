//
//  HomeTheaterFacade.swift
//  SweetHomeTheater
//
//  Created by Homma Takushi on 2015/09/22.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// ホームシアタファザード
class HomeTheaterFacade {
  /// アンプ
  var amp: Amplifier
  /// DVDプレーヤ
  var dvd: DvdPlayer
  /// プロジェクタ
  var projector: Projector
  /// スクリーン
  var screen: Screen
  /// 照明
  var lights: TheaterLights
  /// ポップコーン製造機
  var popper: PoppcornPopper
  
  /**
  イニシャライザ
  
  - parameter amp:       アンプ
  - parameter dvd:       DVDプレーヤ
  - parameter projector: プロジェクタ
  - parameter screen:    スクリーン
  - parameter lights:    照明
  - parameter popper:    ポップコーン製造機
  
  - returns: ホームシアタファザード
  */
  init(amp: Amplifier , dvd: DvdPlayer , projector: Projector , screen: Screen , lights: TheaterLights , popper: PoppcornPopper) {
      
      self.amp = amp
      self.dvd = dvd
      self.projector = projector
      self.screen = screen
      self.lights = lights
      self.popper = popper
  }
  
  /**
  映画を見ます
  
  - parameter movie: 映画
  */
  func watchMovie(movie: String) {
    print("映画を見る準備をします……")
    
    self.popper.on()
    self.popper.pop()
    self.lights.dim(10)
    self.screen.down()
    self.projector.on()
    self.projector.wideScreenMode()
    self.amp.on()
    self.amp.setDVD(self.dvd)
    self.amp.setSurroundSound()
    self.amp.setVolume(5)
    self.dvd.on()
    self.dvd.play(movie)
  }
  
  /**
  映画を終了します
  */
  func endMovie() {
    print("ムービーシアタを停止します……")
    
    self.popper.off()
    self.lights.on()
    self.screen.up()
    self.projector.off()
    self.amp.off()
    self.dvd.stop()
    self.dvd.eject()
    self.dvd.off()
  }
}