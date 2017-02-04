//#-hidden-code
//
//  Contents.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
//#-end-hidden-code
/*:
 **目标：** 找到并修复 Bug 
 
 写代码时难免会出现这样那样的错误。使程序不能正确运行的错误称为 [bug](glossary://bug)，找到并修复 Bug 的过程称为 [调试](glossary://debug)。
 
 下面的代码包含有若干 Bug，重新安排正确的命令顺序将程序调试正确。
 
 1. 运行代码，看看哪里出现错误。
 2. 找出出现错误的命令，点击它。
 3. 将其拖拽到正确的位置，然后重新运行代码继续调试，直到完全正确。
*/
//#-hidden-code
playgroundPrologue()
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, moveForward(), turnLeft(), collectGem(), toggleSwitch())
//#-editable-code 点这里输入代码
moveForward()
turnLeft()
moveForward()
moveForward()
collectGem()
moveForward()
toggleSwitch()
//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code

