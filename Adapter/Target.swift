//
//  Target.swift
//  DSPs
//
//  Created by choijunios on 4/13/25.
//

// 클라이언트가 기대하는 인터페이스
class Target {
    func request() -> String { fatalError() }
}

// 기존 클래스 (호환되지 않음)
class FileFetcher {
    func specificRequest() -> String {
        return "file"
    }
}

// Adapter 클래스: Target 인터페이스를 만족시키면서 내부에서 Adaptee를 사용
class FileSystemAdapter: Target {
    private let adaptee = FileFetcher()
    
    override func request() -> String {
        return adaptee.specificRequest()
    }
}
