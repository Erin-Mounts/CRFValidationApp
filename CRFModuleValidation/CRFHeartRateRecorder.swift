//
//  CRFHeartRateRecorder.swift
//  CRFModuleValidation
//
//  Copyright © 2017 Sage Bionetworks. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// 1.  Redistributions of source code must retain the above copyright notice, this
// list of conditions and the following disclaimer.
//
// 2.  Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation and/or
// other materials provided with the distribution.
//
// 3.  Neither the name of the copyright holder(s) nor the names of any contributors
// may be used to endorse or promote products derived from this software without
// specific prior written permission. No license is granted to the trademarks of
// the copyright holders even if such marks are included in this software.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

import Foundation
import ResearchSuite

//public struct CRFHeartRateRecorderConfiguration : RSDRecorderConfiguration, Codable {
//    
//    public let identifier: String
//    public let startStepIdentifier: String?
//    public let stopStepIdentifier: String?
//    
//    public init(identifier: String, startStepIdentifier: String?, stopStepIdentifier: String?) {
//        self.identifier = identifier
//        self.startStepIdentifier = startStepIdentifier
//        self.stopStepIdentifier = stopStepIdentifier
//    }
//    
//    public var permissions: [RSDPermissionType] {
//        return [RSDStandardPermissionType.camera]
//    }
//    
//    public var requiresBackgroundAudio: Bool {
//        return false
//    }
//    
//    public func validate() throws {
//        try RSDStandardPermissionType.camera.validate()
//    }
//}

public struct CRFHeartRateSample : RSDSampleRecord {
    public let uptime: TimeInterval
    public let date: Date
    public let stepPath: String
    public let bpm: Double?
    public let hue: Double?
    public let saturation: Double?
    public let brightness: Double?
    public let red: Double?
    public let green: Double?
    public let blue: Double?
}

//public class CRFHeartRateRecorder : RSDSampleRecorder {
//
//    public enum CRFHeartRateRecorderError : Error {
//        case permissionDenied
//    }
//
//    /**
//     Convenience property for getting the location configuration.
//     */
//    public var locationConfiguration: CRFLocationRecorderConfiguration? {
//        return self.configuration as? CRFLocationRecorderConfiguration
//    }
//
//    @objc dynamic public private(set) var bpm: Double = 0.0
//
//    private let processingQueue = DispatchQueue(label: "org.sagebase.ResearchSuite.heartrate.processing")
//
//    override public func startRecorder(_ completion: RSDAsyncActionCompletionHandler?) {
//        DispatchQueue.main.async {
//            do {
//                super.startRecorder(completion)
//            } catch let err {
//                completion?(self, nil, err)
//            }
//        }
//    }
//
//    override public func stopRecorder(loggerError: Error?, _ completion: RSDAsyncActionCompletionHandler?) {
//        DispatchQueue.main.async {
//            super.stopRecorder(loggerError: loggerError, completion)
//        }
//    }
//
//}

