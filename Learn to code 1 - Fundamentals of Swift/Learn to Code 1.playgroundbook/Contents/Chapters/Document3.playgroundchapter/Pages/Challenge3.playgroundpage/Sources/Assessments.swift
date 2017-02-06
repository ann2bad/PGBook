// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 干的不错！ \n经过努力你成功了。将问题分解成若干更小的问题逐个解决，然后再将小方案组合成解决最终问题的方案。这是解决复杂问题很好的办法。 \n\n[**下一关**](@next)"

let solution: String? = nil

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)

    
    let hints = [
        "在本关中你需要爬上三个楼梯。对每一个楼梯，使用一个函数来让你的角色移动到尽头，转换开关，在走回原点。",
        "你可以使用 `for` 循环来重复能够搞定一条楼梯的一系列行为。",
        "试着解决第一条楼梯，然后循环这个解决方案来解决后两条。",
        "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"
        
        ]
    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
