// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 太漂亮了！ \n你已经解决了目前为止最难的问题！你已经可以进入下一章了。 \n\n[**条件-简介**](条件/简介)"


let solution: String? = nil

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    pageIdentifier = "Four_Stash_Sweep"

    
    var hints = [
        "看看四组宝石有什么相似之处？解决其中一组的代码是否也能解决其他的？",
        "先收集最近的四颗宝石，然后让你的角色移动到传送门，最后将以上的行为循环。",
        "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"

        ]
    
    switch currentPageRunCount {
        
    case 0..<5:
        break
    case 5:
        hints[0] = "这是一个 **挑战关** ，你可能要多试几次才能通过。"
    case 6...8:
        hints[0] = "**提示**：当你面临挑战的时候，你可能需要放松一会再回来继续。"
    default:
        break
        
    }
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
