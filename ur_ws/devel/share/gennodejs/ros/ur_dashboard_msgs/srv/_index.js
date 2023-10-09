
"use strict";

let Popup = require('./Popup.js')
let GetLoadedProgram = require('./GetLoadedProgram.js')
let Load = require('./Load.js')
let RawRequest = require('./RawRequest.js')
let GetRobotMode = require('./GetRobotMode.js')
let IsProgramSaved = require('./IsProgramSaved.js')
let IsProgramRunning = require('./IsProgramRunning.js')
let GetProgramState = require('./GetProgramState.js')
let IsInRemoteControl = require('./IsInRemoteControl.js')
let AddToLog = require('./AddToLog.js')
let GetSafetyMode = require('./GetSafetyMode.js')

module.exports = {
  Popup: Popup,
  GetLoadedProgram: GetLoadedProgram,
  Load: Load,
  RawRequest: RawRequest,
  GetRobotMode: GetRobotMode,
  IsProgramSaved: IsProgramSaved,
  IsProgramRunning: IsProgramRunning,
  GetProgramState: GetProgramState,
  IsInRemoteControl: IsInRemoteControl,
  AddToLog: AddToLog,
  GetSafetyMode: GetSafetyMode,
};
