//
//  Challenge62.swift
//  Challenges
//
//  Created by Nick Pfister on 10/2/23.
//

func challenge62() {
    var points = [(first: CGPoint, second: CGPoint)]()
    points.append((first: CGPoint.zero, second: CGPoint(x: 0, y: -100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 100, y: -100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 100, y: 0)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 100, y: 100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 0, y: 100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: -100, y: 100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: -100, y: 0)))
    points.append((first: CGPoint.zero, second: CGPoint(x: -100, y: -100)))
    
    let result = points.map { angle($0) }
    assert(result == [0.0, 45.0, 90.0, 135.0, 180.0, 225.0, 270.0, 315.0])
    
    print("Challenge 62 solved!")
    
    func angle(_ points: (CGPoint, CGPoint)) -> CGFloat {
        let (first, second) = points
        let diff = CGPoint(x: first.x - second.x, y: first.y - second.y)
        
        // Angles are requested from positive 9 axis, so offset by 90 deg
        let signedAngle = atan2(diff.y, diff.x) * 180 / CGFloat.pi - 90
        
        
        return signedAngle >= 0.0 ? signedAngle : signedAngle + 360
    }
}

