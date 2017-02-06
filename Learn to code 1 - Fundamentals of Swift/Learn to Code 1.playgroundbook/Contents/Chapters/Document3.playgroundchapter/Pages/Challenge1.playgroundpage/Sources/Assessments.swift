// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 很不错！ \n看来你掌握的很好。 \n\n[**下一关**](@next)"
let hints = [
    "首先在代码里加入 `for` 循环。",
    "有两个可行的办法解决这个问题。第一个，在每次循环中，让你的角色从中心点出发再返回中心点。另一个，先让角色移动到外围，然后使用循环依次经过每一个角。",
    "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"

]

let solution: String? = nil

public func assessmentPoint() -> AssessmentResults {
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
