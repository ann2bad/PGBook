// 
//  Commands.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
/**
 使角色向左转
 */
public func turnLeft() {
    actor.turnLeft()
}


/**
 使角色向前移动一格
 */
public func moveForward() {
    actor.moveForward()
}

/**
 转换角色所在格子的开关状态
 */
public func toggleSwitch() {
    actor.toggleSwitch()
}

/**
 收集角色所在格子上的宝石
 */
public func collectGem() {
    actor.collectGem()
}

/**
 检测角色所在格子上是否有打开的开关
 */
public var isOnOpenSwitch: Bool {
    return actor.isOnOpenSwitch
}

/**
 检测角色所在格子上是否有关闭的开关
 */
public var isOnClosedSwitch: Bool {
    return actor.isOnClosedSwitch
}

/**
 检测角色所在格子上是否有宝石
 */
public var isOnGem: Bool {
    return actor.isOnGem
}

/**
 检测角色的前进方向是否被阻挡
 */
public var isBlocked: Bool {
    return actor.isBlocked
}

/**
 检测角色当前方向的右侧是否被阻挡
 */
public var isBlockedRight: Bool {
    return actor.isBlockedRight
}

/**
 检测角色当前方向的左侧是否被阻挡
 */
public var isBlockedLeft: Bool {
    return actor.isBlockedLeft
}

/**
 使角色向前跳上或跳下一格，若面前的格子和当前格高度相同，则平跳。
 */
public func jump() {
    actor.jump()
}
