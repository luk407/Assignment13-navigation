
import UIKit

class ColorPaletteVC: UIViewController {
    
    //MARK: Labels
    let backgroundLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    let buttonLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    //MARK: StackViews
    let mainSV: UIStackView = {
        let stackView = UIStackView()
        
        return stackView
    }()
    
    //MARK: Button Color Changer Buttons
    let redButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let blueButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    let greenButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let yellowButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let cyanButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let greyButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    //MARK: BackgroundColor Changer Buttons
    let redButtonBackground: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let blueButtonBackground: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let greenButtonBackground: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let yellowButtonBackground: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let cyanButtonBackground: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    let greyButtonBackground: UIButton = {
       let button = UIButton()
        
        return button
    }()
     
    //MARK: Button Actions
    var backgroundRedAction: (()->Void)?
    var backgroundBlueAction: (()->Void)?
    var backgroundGreenAction: (()->Void)?
    var backgroundYellowAction: (()->Void)?
    var backgroundCyanAction: (()->Void)?
    var backgroundGreyAction: (()->Void)?
    var buttonRedAction: (()->Void)?
    var buttonBlueAction: (()->Void)?
    var buttonGreenAction: (()->Void)?
    var buttonYellowAction: (()->Void)?
    var buttonCyanAction: (()->Void)?
    var buttonGreyAction: (()->Void)?
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainSV)
        view.backgroundColor = .white
        
        mainSVSetup()
    }
    
    //MARK: Methods
    func mainSVSetup() {
        view.addSubview(mainSV)
        mainSV.translatesAutoresizingMaskIntoConstraints = false
        mainSV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainSV.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        mainSV.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainSV.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        mainSV.addArrangedSubview(buttonLabel)
        mainSV.addArrangedSubview(redButton)
        mainSV.addArrangedSubview(blueButton)
        mainSV.addArrangedSubview(greenButton)
        mainSV.addArrangedSubview(yellowButton)
        mainSV.addArrangedSubview(cyanButton)
        mainSV.addArrangedSubview(greyButton)
        mainSV.addArrangedSubview(backgroundLabel)
        mainSV.addArrangedSubview(redButtonBackground)
        mainSV.addArrangedSubview(blueButtonBackground)
        mainSV.addArrangedSubview(greenButtonBackground)
        mainSV.addArrangedSubview(yellowButtonBackground)
        mainSV.addArrangedSubview(cyanButtonBackground)
        mainSV.addArrangedSubview(greyButtonBackground)
        mainSV.axis = .vertical
        mainSV.alignment = .center
        mainSV.distribution = .fillEqually
        mainSV.spacing = 5
        
        buttonLabelSetup()
        redButtonSetup()
        blueButtonSetup()
        greenButtonSetup()
        yellowButtonSetup()
        cyanButtonSetup()
        greyButtonSetup()
        backgroundLabelSetup()
        redButtonBackgroundSetup()
        blueButtonBackgroundSetup()
        greenButtonBackgroundSetup()
        yellowButtonBackgroundSetup()
        cyanButtonBackgroundSetup()
        greyButtonBackgroundSetup()
    }
    
    //MARK: Labels setup
    func backgroundLabelSetup() {
        backgroundLabel.text = "Change Home Background Color"
        backgroundLabel.font = .boldSystemFont(ofSize: 14)
    }
    
    func buttonLabelSetup() {
        buttonLabel.text = "Change Home Buttons Background Color"
        buttonLabel.font = .boldSystemFont(ofSize: 14)
    }
    
    //MARK: BackgroundColor Changer Buttons setup
    func redButtonBackgroundSetup() {
        redButtonBackground.backgroundColor = .red
        redButtonBackground.translatesAutoresizingMaskIntoConstraints = false
        redButtonBackground.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        redButtonBackground.layer.cornerRadius = 16
        redButtonBackground.addAction(UIAction(handler: { [weak self] action in
            self?.backgroundRedAction?()
        }), for: .touchUpInside)
    }
    
    func blueButtonBackgroundSetup() {
        blueButtonBackground.backgroundColor = .blue
        blueButtonBackground.translatesAutoresizingMaskIntoConstraints = false
        blueButtonBackground.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        blueButtonBackground.layer.cornerRadius = 16
        blueButtonBackground.addAction(UIAction(handler: { [weak self] action in
            self?.backgroundBlueAction?()
        }), for: .touchUpInside)
    }
    
    func greenButtonBackgroundSetup() {
        greenButtonBackground.backgroundColor = .green
        greenButtonBackground.translatesAutoresizingMaskIntoConstraints = false
        greenButtonBackground.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        greenButtonBackground.layer.cornerRadius = 16
        greenButtonBackground.addAction(UIAction(handler: { [weak self] action in
            self?.backgroundGreenAction?()
        }), for: .touchUpInside)
    }
    
    func yellowButtonBackgroundSetup() {
        yellowButtonBackground.backgroundColor = .yellow
        yellowButtonBackground.translatesAutoresizingMaskIntoConstraints = false
        yellowButtonBackground.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        yellowButtonBackground.layer.cornerRadius = 16
        yellowButtonBackground.addAction(UIAction(handler: { [weak self] action in
            self?.backgroundYellowAction?()
        }), for: .touchUpInside)
    }
    
    func cyanButtonBackgroundSetup() {
        cyanButtonBackground.backgroundColor = .cyan
        cyanButtonBackground.translatesAutoresizingMaskIntoConstraints = false
        cyanButtonBackground.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        cyanButtonBackground.layer.cornerRadius = 16
        cyanButtonBackground.addAction(UIAction(handler: { [weak self] action in
            self?.backgroundCyanAction?()
        }), for: .touchUpInside)
    }
    
    func greyButtonBackgroundSetup() {
        greyButtonBackground.backgroundColor = .darkGray
        greyButtonBackground.translatesAutoresizingMaskIntoConstraints = false
        greyButtonBackground.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        greyButtonBackground.layer.cornerRadius = 16
        greyButtonBackground.addAction(UIAction(handler: { [weak self] action in
            self?.backgroundGreyAction?()
        }), for: .touchUpInside)
    }
    
    //MARK: Button Color Changer Buttons setup
    func redButtonSetup() {
        redButton.backgroundColor = .red
        redButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        redButton.layer.cornerRadius = 16
        redButton.addAction(UIAction(handler: { [weak self] action in
            self?.buttonRedAction?()
        }), for: .touchUpInside)
    }
    
    func blueButtonSetup() {
        blueButton.backgroundColor = .blue
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        blueButton.layer.cornerRadius = 16
        blueButton.addAction(UIAction(handler: { [weak self] action in
            self?.buttonBlueAction?()
        }), for: .touchUpInside)
    }
    
    func greenButtonSetup() {
        greenButton.backgroundColor = .green
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        greenButton.layer.cornerRadius = 16
        greenButton.addAction(UIAction(handler: { [weak self] action in
            self?.buttonGreenAction?()
        }), for: .touchUpInside)
    }
    
    func yellowButtonSetup() {
        yellowButton.backgroundColor = .yellow
        yellowButton.translatesAutoresizingMaskIntoConstraints = false
        yellowButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        yellowButton.layer.cornerRadius = 16
        yellowButton.addAction(UIAction(handler: { [weak self] action in
            self?.buttonYellowAction?()
        }), for: .touchUpInside)
    }
    
    func cyanButtonSetup() {
        cyanButton.backgroundColor = .cyan
        cyanButton.translatesAutoresizingMaskIntoConstraints = false
        cyanButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        cyanButton.layer.cornerRadius = 16
        cyanButton.addAction(UIAction(handler: { [weak self] action in
            self?.buttonCyanAction?()
        }), for: .touchUpInside)
    }
    
    func greyButtonSetup() {
        greyButton.backgroundColor = .darkGray
        greyButton.translatesAutoresizingMaskIntoConstraints = false
        greyButton.widthAnchor.constraint(equalTo: mainSV.widthAnchor).isActive = true
        greyButton.layer.cornerRadius = 16
        greyButton.addAction(UIAction(handler: { [weak self] action in
            self?.buttonGreyAction?()
        }), for: .touchUpInside)
    }
}
