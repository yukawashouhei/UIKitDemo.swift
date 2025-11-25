
import SwiftUI
import UIKit

class ViewController: UIViewController {

    var count = 0
    let countLabel = UILabel()
    let countButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
    }
    
    func setupUI() {

        countLabel.text = "0"
        countLabel.font = .systemFont(ofSize: 40)
        countLabel.textAlignment = .center
        
        //位置とサイズをピクセル単位で命令。 座標(0, 200)に、幅は画面いっぱい、高さは50で配置。
        countLabel.frame = CGRect(x: 0, y: 200, width: view.frame.width, height: 50)
        view.addSubview(countLabel)
        
        countButton.setTitle("増やす", for: .normal)
        countButton.titleLabel?.font = .systemFont(ofSize: 24)

        countButton.frame = CGRect(x: 0, y: 300, width: view.frame.width, height: 50)

        countButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(countButton)
    }
    
    @objc func buttonTapped() {
        
        count += 1
        
        countLabel.text = "\(count)"
        
        if count > 10 {
            countLabel.textColor = .red
        }
    }
}

#Preview {
    ViewController()
}
