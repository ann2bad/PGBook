// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//


let solution = "```swift\nfunc turnAround() {\n   turnLeft()\n   turnLeft()\n}\n\nfunc solveStair() {\n   moveForward()\n   collectGem()\n   turnAround()\n   moveForward()\n   turnLeft()\n}\n\nsolveStair()\nsolveStair()\nsolveStair()\nsolveStair()\n```"

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var success = "### 不可思议！ \n你成功的将一个大问题分成了若干的小问题，这个过程被称为 [分解](glossary://decomposition)。而联合使用多个函数解决一个大问题的过程称之为 [组合](glossary://composition)。 \n再一次恭喜你！ \n\n[**下一关**](@next)"
    var hints = [
        "首先， [定义](glossary://define) 一个包括以下任务的 `solveStair()` 函数：让角色上楼梯，然后收集宝石，转向，最终回到中心位置。",
        "确保在 `solveStair()` 函数中使用了 `turnAround()` 函数。",
        "[定义](glossary://define) 了 `solveStair()`函数后，[调用](glossary://call) 它来收集全部的宝石。"
    ]

    
    if checker.functionCallCount(forName: "solveStair") == 0 && checker.functionCallCount(forName: "turnAround") > 0 {
        success = "### 就差一点了！ \n你使用了 `turnAround()` 函数，但并没有 [调用](glossary://call) `solveStair()`！我们应该将一个大问题分解成若干的小问题。在本关中为了让代码更好的被理解和重用，可以使用 `turnAround()` 来 [定义](glossary://define) `solveStair()` 再试一试？或者直接进入 [**下一关**](@next)"
        hints[0] = "你使用了 `turnAround()` 函数，但并没有 [调用](glossary://call) `solveStair()`！使用 `turnAround()` 来 [定义](glossary://define) `solveStair()`，然后 [调用](glossary://call) `solveStair()` 四次来收集每个楼梯上的宝石。"
    } else if checker.functionCallCount(forName: "solveStair") > 2 && checker.functionCallCount(forName: "turnAround") > 1 {
        success = "### 不可思议！ \n你成功的将一个大问题分成了若干的小问题，这个过程被称为 [分解](glossary://decomposition)。而联合使用多个函数解决一个大问题的过程称之为 [组合](glossary://composition)。 \n再一次恭喜你！ \n\n[**下一关**](@next)"
        hints[0] = "你的思路是对的！回想一下都用了哪些命令来 [定义](glossary://define) `solveStair()`函数，然后多次 [调用](glossary://call) 它来收集每个楼梯上的宝石的全过程。"
    } else if checker.numberOfStatements > 16 && checker.functionCallCount(forName: "solveStair") < 1 {
        success = "问题解决了 \n不过，使用函数是为了将大问题分解为若干更小、更好管理的问题。试着重新解决问题，这一次 [定义](glossary://define) 一个 `solveStair()` 函数，用它来收集角色面对的楼梯上的宝石。你需要先向前移动一格，然后收集宝石，再向后转，最后再向前移动一格回到中心位置。"
        hints[0] = "尝试定义并调用 `solveStair()` 函数来减少使用命令的数量。"
    } else if checker.didUseForLoop || checker.didUseWhileLoop {
        success = "### 不可思议！ \n这里使用循环是一个不错的主意！不过不要骄傲，再接再厉！ \n\n[**下一关**](@next)"
    }
    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
