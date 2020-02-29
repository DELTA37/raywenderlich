import UIKit
import PlaygroundSupport
import RxSwift
import RxCocoa

var str = "Hello, playground"
print(str)

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 700))

containerView.backgroundColor = UIColor.white

let signUpButton1 = UIButton()
signUpButton1.backgroundColor = UIColor.red
signUpButton1.setTitle("Tap me!", for: .normal)
// signUpButton1.sizeToFit()

let signUpButton2 = UIButton()
signUpButton2.backgroundColor = UIColor.blue
signUpButton2.setTitle("Tap me!", for: .normal)
// signUpButton2.sizeToFit()

let scrollView = UIScrollView()

let stackView = UIStackView(arrangedSubviews: [signUpButton1, signUpButton2])
stackView.axis = .vertical
stackView.distribution = .fillEqually
stackView.spacing = 10
stackView.translatesAutoresizingMaskIntoConstraints = false


containerView.addSubview(stackView)

containerView.addConstraints(
    NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[stackView]-20-|",
                                                   options: NSLayoutConstraint.FormatOptions(rawValue: 0),
    metrics: nil,
    views: ["stackView": stackView])
)

containerView.addConstraints(
    NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[stackView]-20-|",
                                                   options: NSLayoutConstraint.FormatOptions(rawValue: 0),
    metrics: nil,
    views: ["stackView": stackView])
)

let didTapSignUp = PublishSubject<Void>()

signUpButton1.rx.tap.subscribe(didTapSignUp)
signUpButton2.rx.tap.subscribe(didTapSignUp)

didTapSignUp.subscribe { _ in
    print("I got tapped!")
}

PlaygroundPage.current.liveView = containerView
 
