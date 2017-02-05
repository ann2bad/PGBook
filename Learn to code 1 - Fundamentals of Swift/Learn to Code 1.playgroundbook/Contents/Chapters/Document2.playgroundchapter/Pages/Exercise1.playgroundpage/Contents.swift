//#-hidden-code
//
//  Contents.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
//#-end-hidden-code
/*:
 **目标：** 组合使用命令来向右转。
 
 是否注意到你现在并没有 ``turnRight()`` 命令可用？如果你的角色需要向右转才能收集到宝石，要怎么办呢？
 
 有时候 [编程](glossary://coding) 问题就是结合现有的命令创造新的行为，这个过程称之为 [组合](glossary://composition)。
 
 1. 想想如何仅使用已学过的命令来达到向右转的效果？
 3. 当你的角色需要向右转时，使用这些命令的组合。
 2. 输入命令收集宝石吧。
*/
//#-hidden-code
playgroundPrologue()
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, moveForward(), turnLeft(), collectGem(), toggleSwitch())
//#-editable-code 点这里输入代码

//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code

