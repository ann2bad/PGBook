// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 真是不可思议！ \n你已经学会如何将复杂问题分解，然写出 [函数](glossary://function) ，通过反复 [调用](glossary://call) 来解决问题。 \n\n[**下一关**](@next)"

let solution: String? = nil

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    pageIdentifier = "Gem_Farm"

    var hints = [
        "首先思考你要将这个挑战分解成哪些小任务？",
        "你要如何使用 `for` 循环来重复执行你写出的函数呢？",
        "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"
        ]
    
    switch currentPageRunCount {
    
    case 0..<4:
        break
    case 4:
        hints[0] = "这是一个 **挑战关** ，你可能要多试几次才能通过。"
    case 5...7:
        hints[0] = "**提示**：当你面临挑战的时候，你可能需要放松一会再回来继续。"
    default:
       break

    }
    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
