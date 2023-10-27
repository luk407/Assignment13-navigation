
import UIKit

class HomePageVC: UIViewController {
    
    let mainSV: UIStackView = {
        let stackView = UIStackView()
        
        return stackView
    }()
    
    let presentButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let pushButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        mainSVSetup()
        presentButtonSetup()
        pushButtonSetup()
    }
    
    func mainSVSetup() {
        view.addSubview(mainSV)
        mainSV.translatesAutoresizingMaskIntoConstraints = false
        mainSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        mainSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        mainSV.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        mainSV.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250).isActive = true
        mainSV.axis = .vertical
        mainSV.alignment = .center
        mainSV.distribution = .fillEqually
        mainSV.spacing = 150
        mainSV.addArrangedSubview(presentButton)
        mainSV.addArrangedSubview(pushButton)
    }
    
    func presentButtonSetup() {
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        presentButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        presentButton.setTitle("Present Color Palette Page", for: .normal)
        presentButton.setTitleColor(.black, for: .normal)
        presentButton.layer.cornerRadius = 16
        presentButton.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        presentButton.layer.backgroundColor = UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 0.25).cgColor
        
        presentButton.addAction(UIAction(handler: { [weak self] action in
            self?.presentToColorPalettePage()
        }), for: .touchUpInside)
    }
    
    func pushButtonSetup() {
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        pushButton.setTitle("Push Color Palette Page", for: .normal)
        pushButton.setTitleColor(.black, for: .normal)
        pushButton.layer.cornerRadius = 16
        pushButton.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        pushButton.layer.backgroundColor = UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 0.25).cgColor
        
        pushButton.addAction(UIAction(handler: { [weak self] action in
            self?.pushToColorPalettePage()
        }), for: .touchUpInside)
    }
    
    func presentToColorPalettePage() {
        let colorPalette = ColorPaletteVC()
        self.present(colorPalette, animated: true)
        
        colorPalette.backgroundRedAction = { [weak self] in
            self?.view.backgroundColor = .red
        }
        colorPalette.backgroundBlueAction = { [weak self] in
            self?.view.backgroundColor = .blue
        }
        colorPalette.backgroundGreenAction = { [weak self] in
            self?.view.backgroundColor = .green
        }
        colorPalette.backgroundYellowAction = { [weak self] in
            self?.view.backgroundColor = .yellow
        }
        colorPalette.backgroundCyanAction = { [weak self] in
            self?.view.backgroundColor = .cyan
        }
        colorPalette.backgroundGreyAction = { [weak self] in
            self?.view.backgroundColor = .darkGray
        }
        
        colorPalette.buttonRedAction = { [weak self] in
            self?.presentButton.backgroundColor = .red
            self?.pushButton.backgroundColor = .red
        }
        colorPalette.buttonBlueAction = { [weak self] in
            self?.presentButton.backgroundColor = .blue
            self?.pushButton.backgroundColor = .blue
        }
        colorPalette.buttonGreenAction = { [weak self] in
            self?.presentButton.backgroundColor = .green
            self?.pushButton.backgroundColor = .green
        }
        colorPalette.buttonYellowAction = { [weak self] in
            self?.presentButton.backgroundColor = .yellow
            self?.pushButton.backgroundColor = .yellow
        }
        colorPalette.buttonCyanAction = { [weak self] in
            self?.presentButton.backgroundColor = .cyan
            self?.pushButton.backgroundColor = .cyan
        }
        colorPalette.buttonGreyAction = { [weak self] in
            self?.presentButton.backgroundColor = .darkGray
            self?.pushButton.backgroundColor = .darkGray
        }
    }
    
    func pushToColorPalettePage() {
        let colorPalette = ColorPaletteVC()
        self.navigationController?.pushViewController(colorPalette, animated: true)
        
        colorPalette.backgroundRedAction = { [weak self] in
            self?.view.backgroundColor = .red
        }
        colorPalette.backgroundBlueAction = { [weak self] in
            self?.view.backgroundColor = .blue
        }
        colorPalette.backgroundGreenAction = { [weak self] in
            self?.view.backgroundColor = .green
        }
        colorPalette.backgroundYellowAction = { [weak self] in
            self?.view.backgroundColor = .yellow
        }
        colorPalette.backgroundCyanAction = { [weak self] in
            self?.view.backgroundColor = .cyan
        }
        colorPalette.backgroundGreyAction = { [weak self] in
            self?.view.backgroundColor = .darkGray
        }
        
        colorPalette.buttonRedAction = { [weak self] in
            self?.presentButton.backgroundColor = .red
            self?.pushButton.backgroundColor = .red
        }
        colorPalette.buttonBlueAction = { [weak self] in
            self?.presentButton.backgroundColor = .blue
            self?.pushButton.backgroundColor = .blue
        }
        colorPalette.buttonGreenAction = { [weak self] in
            self?.presentButton.backgroundColor = .green
            self?.pushButton.backgroundColor = .green
        }
        colorPalette.buttonYellowAction = { [weak self] in
            self?.presentButton.backgroundColor = .yellow
            self?.pushButton.backgroundColor = .yellow
        }
        colorPalette.buttonCyanAction = { [weak self] in
            self?.presentButton.backgroundColor = .cyan
            self?.pushButton.backgroundColor = .cyan
        }
        colorPalette.buttonGreyAction = { [weak self] in
            self?.presentButton.backgroundColor = .darkGray
            self?.pushButton.backgroundColor = .darkGray
        }
    }
}
