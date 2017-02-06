//#-hidden-code
//
//  Contents.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
//#-end-hidden-code
/*:
 **挑战：** 通过多个函数将复杂问题分解。
 
正如之前所学的，定义一个能解决小问题的函数是很有用的。通过在其他函数内 [调用](glossary://call) 来解决更大的问题。
 
你可以根据函数的功能给其命名，可以使代码更加可读。例如： `turnAround()`。这样做也可以加快写代码的效率，因为要为一个大任务定义一个函数的时候，不用再思考小任务的细节，直接调用就好了。
 
 1. 运行代码，看看调用 `solveRow()` 的时候会发生什么？
 2. 调整 `solveRow()` 的代码，使得其可以解决更大的问题。
 3. 结合 `solveRow()` 与其他命令完成本关。
*/
//#-hidden-code
playgroundPrologue()
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, moveForward(), turnLeft(), collectGem(), toggleSwitch(), turnRight(), func)
func collectGemTurnAround() {
    //#-editable-code 点这里输入代码
    moveForward()
    moveForward()
    collectGem()
    turnLeft()
    turnLeft()
    moveForward()
    moveForward()
    //#-end-editable-code
}

func solveRow() {
    //#-editable-code 点这里输入代码
    collectGemTurnAround()
    
    //#-end-editable-code
}
//#-editable-code 点这里输入代码
solveRow()
//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code

