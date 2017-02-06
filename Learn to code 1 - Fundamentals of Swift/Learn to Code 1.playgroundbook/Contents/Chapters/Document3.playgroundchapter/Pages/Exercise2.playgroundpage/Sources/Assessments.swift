// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//


let solution = "```swift\nfor i in 1 ... 4 {\n   moveForward()\n   collectGem()\n   moveForward()\n   moveForward()\n   moveForward()\n   turnRight()\n}\n```"

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var success = "### 真棒！ \n现在你应该知道如何向代码中加入循环了吧？利用你的新技能解决后面的问题吧。 \n\n[**下一关**](@next)"
    var hints = [
        "点击屏幕上方的加号按钮打开代码库，然后拖拽出一个 `for` 循环。",
        "对于正方形每条边，基本序列应该是：收集宝石，向前移动三次，然后向右转。"
    ]
    
    if checker.didUseWhileLoop {
        success = "### 喔！ 已经学会 while 循环了吗？ \n\n[**下一关**](@next)"
        
    } else if checker.didUseForLoop {
        success = "### 真棒！ \n现在你应该知道如何向代码中加入循环了吧？利用你的新技能解决后面的问题吧。 \n\n[**下一关**](@next)"
        hints[0] = "试着拖拽下面的花括号将已有的命令包括到 `for` 循环中。"
    } else if !checker.didUseForLoop {
        success = "### 不要忘了使用循环啊！ \n使用循环能使你的方案更加简短。"
        hints[0] = "点击屏幕上方的加号按钮打开代码库，然后拖拽出一个 `for` 循环，拖拽下面的花括号也可以将已有的命令包括到 `for` 循环中。"
    }
    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
