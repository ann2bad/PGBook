//#-hidden-code
//
//  Contents.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
//#-end-hidden-code
/*:
 **目标：** 定义并使用我们自己向右转的函数。
 
在上一关，我们只需要向右转一次，所以直接使用三次左转并没有什么大问题。但是如果我们需要多次向右转怎么办呢？比较高效率的办法是将三个左转的命令放入一个名为 ``turnRight()`` 的命令里，然后再需要的时候调用。

像 ``turnRight()`` 这样的命令实际上是一个 [函数](glossary://function)。在之前用到的 [命令](glossary://command) 实际上也都是系统提供给我们的函数。
 
[定义](glossary://define) 一个函数，在花括号 `{` 和  `}` 中间输入一组命令。

 1. 在函数体 （在花括号 `{` 和 `}` 中间的位置）内点击。
 2. 输入三个 `turnLeft()` 命令。
 3. 在这个函数下面，结合使用 `turnRight()` 和之前的命令来打开开关。
*/
//#-hidden-code
playgroundPrologue()
//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, moveForward(), turnLeft(), collectGem(), toggleSwitch())
//#-end-hidden-code
func turnRight() {
    //#-editable-code 为你的函数添加命令
    
    //#-end-editable-code
}
//#-editable-code 点这里输入代码

//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code

