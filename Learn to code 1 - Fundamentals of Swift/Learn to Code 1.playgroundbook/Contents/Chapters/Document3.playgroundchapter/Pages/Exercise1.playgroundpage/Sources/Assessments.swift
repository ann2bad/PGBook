// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let solution = "```swift\nfor i in 1 ... 5 {\n   moveForward()\n   moveForward()\n   collectGem()\n   moveForward()\n}\n```"

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var success = "### 干得好！可以利用循环来重复运行一些指令。在这个练习中，循环已经提供给你了。但是在下一个练习，你将学习如何在你的代码中添加 `for` 循环。 \n\n[**下一关**](@next)"
    
    var hints = [
        "你能指出有哪些命令需要重复执行吗？",
        "基本序列应该是：向前移动，收集宝石，然后走向传送门。",
        "这里一共有五行，所以你应该让循环重复五次。"
        ]

    
    
    if checker.didUseWhileLoop {
        success = "### 不可思议！ \n在这里使用 while 循环也是很不错的方法。 \n\n[下一关](@next)"

        
    } else if checker.didUseForLoop {
        success = "### 干得好！可以利用循环来重复运行一些指令。在这个练习中，循环已经提供给你了。但是在下一个练习，你将学习如何在你的代码中添加 `for` 循环。 \n\n[**下一关**](@next)"
        hints[0] = "基本序列应该是：向前移动，收集宝石，然后走向传送门。"
        hints[1] = "向前移动两次，然后收集宝石，最后再向前移动。"
    } else if !checker.didUseForLoop {
        success = "### 不要忘了使用循环啊！ \n使用循环能使你的方案更加简短。"
        hints[0] = "首先点 `number` 输入你想循环的次数，然后在 `for` 循环内部加入你想重复执行的命令。"
    }
    
    
    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
