//  MIT License
//
//  Copyright © 2023 Theo. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation

@propertyWrapper
public struct Document<Value: Codable> {
  let key: String
  let category: String
  let defaultValue: Value?
  
  private var url: URL?
    
  public init(key: String, category: String, defaultValue: Value? = nil) {
    self.key = key
    self.category = category
    self.defaultValue = defaultValue
    
    if let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first {
      let intermediate = URL(fileURLWithPath: path).appendingPathComponent(category, isDirectory: true)
      try? FileManager.default.createDirectory(
        at: intermediate,
        withIntermediateDirectories: true,
        attributes: nil
      )
      self.url = intermediate.appendingPathComponent(key)
    }
  }
  
  public var wrappedValue: Value? {
    get {
      guard let url, let data = try? Data(contentsOf: url) else { return defaultValue }
      return (try? JSONDecoder().decode(Value.self, from: data)) ?? defaultValue
    }
    set {
      guard let url else { return }
      if let newValue {
        let data = try? JSONEncoder().encode(newValue)
        try? data?.write(to: url)
      } else {
        try? FileManager.default.removeItem(at: url)
      }
    }
  }
}
