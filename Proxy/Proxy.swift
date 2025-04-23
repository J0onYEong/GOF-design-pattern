//
//  Proxy.swift
//  DSPs
//
//  Created by choijunios on 4/23/25.
//

protocol Graphic {
    func draw()
}

class Image: Graphic {
    init() {
        print("image created")
    }
    
    func draw() {
        print("draw image")
    }
}

class ImageProxy: Graphic {
    
    private var _image: Image!
    
    func draw() {
        print("proxy accept draw")
        if _image == nil {
            let newImage = Image()
            _image = newImage
        }
        _image.draw()
    }
}
