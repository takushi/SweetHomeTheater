//
//  main.swift
//  SweetHomeTheater
//
//  Created by Homma Takushi on 2015/09/22.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

var amp: Amplifier = Amplifier()
var dvd: DvdPlayer = DvdPlayer(amplifier: amp)
var projector: Projector = Projector(dvdPlayer: dvd)
var screen: Screen = Screen()
var lights: TheaterLights = TheaterLights()
var popper: PoppcornPopper = PoppcornPopper()

var homeTheater: HomeTheaterFacade = HomeTheaterFacade(amp: amp, dvd: dvd, projector: projector, screen: screen, lights: lights, popper: popper)

homeTheater.watchMovie("レイダース／失われたアーク《聖櫃》")
homeTheater.endMovie()
