//#-hidden-code
//
//  Contents.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
//#-end-hidden-code
/*:
 **目标：** 从一个函数 [调用](glossary://call) 其他函数。
 
目前位置，新 [定义](glossary://define) 的 [函数](glossary://function) 都是只调用了类似 `moveForward()` 和 `collectGem()` 等已有的 [命令](glossary://command)，当然你也可以调用其他的命令。

*`turnAround()`* 函数让你的角色向后转，你可以在另一个函数 *`solveStair()`* 中调用它，然后在代码中调用 `solveStair()` 来解决本关的大部分问题。 
 
 这个将一个大问题分成若干小问题的过程称之为 [分解](glossary://decomposition)。
 
 1. 定义 `solveStair()` 函数，在其中调用 `turnAround()`。
 2. 调用 `solveStair()` 以及其他需要的命令。
 3. 收集全部四个宝石完成本关。
*/
//#-hidden-code
playgroundPrologue()
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, moveForward(), turnLeft(), collectGem(), toggleSwitch(), turnRight(), func)
func turnAround() {
    //#-editable-code 点这里输入代码
    turnLeft()
    turnLeft()
    //#-end-editable-code
}

func solveStair() {
    //#-editable-code 点这里输入代码
    
    //#-end-editable-code
}
//#-editable-code 点这里输入代码
solveStair()
//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code

