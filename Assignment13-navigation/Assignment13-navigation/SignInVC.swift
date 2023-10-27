
import UIKit

class SignIn: UIViewController {
    
    //MARK: Views
    let mainView: UIStackView = {
        let view = UIStackView()
        return view
    }()
    
    let signInView: UIView = {
       let view = UIView()
        return view
    }()
    
    //MARK: StackViews
    let elementsSV: UIStackView = {
        let view = UIStackView()
        return view
    }()
    
    let headerSV: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    let inputSV: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    let socialSV: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    let orSV: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    let rightLineView: UIView = {
        let view = UIView()
        return view
    }()
    
    let leftLineView: UIView = {
        let view = UIView()
        return view
    }()
    
    let socialIconsSV: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    //MARK: ImageViews
    let profileIV: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let googleImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let facebookImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let linkedinImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    //MARK: Labels
    let signInLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let forgotLabel: UILabel = {
       let label = UILabel()
        return label
    }()
    
    let orLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let noAccountLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    //MARK: TextFields
    let emailTF: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    let passwordTF: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    //MARK: Buttons
    let signInButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(mainView)
        
        mainViewSetup()
    }
    
    //MARK: Methods
    func mainViewSetup() {
        mainView.backgroundColor = .white
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        mainView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainView.layoutMargins = UIEdgeInsets(top: 32, left: 0, bottom: 32, right: 32)
        mainView.axis = .vertical
        mainView.alignment = .center
        mainView.distribution = .fillProportionally
        mainView.spacing = 65
        
        addSubViews()
        
        elementsSVSetup()
        headerSVSetup()
        profileIVSetup()
        signInLabelSetup()
        inputSVSetup()
        signInViewSetup()
        socialSVSetup()
        emailTFSetup()
        passwordTFSetup()
        forgotLabelSetup()
        signInButtonSetup()
        orSVSetup()
        rightLineViewSetup()
        leftLineViewSetup()
        orLabelSetup()
        socialIconsSVSetup()
        googleImageSetup()
        facebookImageSetup()
        linkedinImageSetup()
        noAccountLabelSetup()
    }
    
    //MARK: Setup Views
    func signInViewSetup() {
        signInView.backgroundColor = .white
        signInView.translatesAutoresizingMaskIntoConstraints = false
        signInView.widthAnchor.constraint(equalTo: elementsSV.widthAnchor).isActive = true
        signInView.heightAnchor.constraint(equalToConstant: 45).isActive = true
        signInView.centerXAnchor.constraint(equalTo: elementsSV.centerXAnchor).isActive = true
        signInView.addSubview(signInButton)
    }
    
    func rightLineViewSetup() {
        rightLineView.backgroundColor = .black
        rightLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        rightLineView.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func leftLineViewSetup() {
        leftLineView.backgroundColor = .black
        leftLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        leftLineView.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }

    //MARK: Setup StackViews
    func elementsSVSetup() {
        elementsSV.backgroundColor = .white
        elementsSV.translatesAutoresizingMaskIntoConstraints = false
        elementsSV.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        elementsSV.axis = .vertical
        elementsSV.alignment = .center
        elementsSV.distribution = .fillProportionally
        elementsSV.spacing = 32
    }
    
    func headerSVSetup() {
        headerSV.backgroundColor = .white
        headerSV.translatesAutoresizingMaskIntoConstraints = false
        headerSV.widthAnchor.constraint(equalToConstant: 160).isActive = true
        headerSV.axis = .vertical
        headerSV.alignment = .center
        headerSV.distribution = .fillProportionally
        headerSV.spacing = 15
    }
    
    func inputSVSetup() {
        inputSV.backgroundColor = .white
        inputSV.translatesAutoresizingMaskIntoConstraints = false
        inputSV.widthAnchor.constraint(equalTo: elementsSV.widthAnchor).isActive = true
        inputSV.axis = .vertical
        inputSV.alignment = .center
        inputSV.distribution = .fillProportionally
        inputSV.spacing = 15
    }
    
    func socialSVSetup() {
        socialSV.backgroundColor = .white
        socialSV.widthAnchor.constraint(equalToConstant: 272).isActive = true
        socialSV.axis = .vertical
        socialSV.alignment = .center
        socialSV.distribution = .fillProportionally
        socialSV.spacing = 14
    }
    
    func orSVSetup() {
        orSV.backgroundColor = .white
        orSV.axis = .horizontal
        orSV.alignment = .center
        orSV.distribution = .fillProportionally
        orSV.spacing = 5
    }
    
    func socialIconsSVSetup() {
        socialIconsSV.backgroundColor = .white
        socialIconsSV.translatesAutoresizingMaskIntoConstraints = false
        socialIconsSV.widthAnchor.constraint(equalToConstant: 148).isActive = true
        socialIconsSV.axis = .horizontal
        socialIconsSV.alignment = .center
        socialIconsSV.distribution = .fillEqually
        socialIconsSV.spacing = 23
    }
    
    //MARK: Setup ImageViews
    func profileIVSetup() {
        profileIV.image = UIImage(named: "Ellipse 29")
        profileIV.heightAnchor.constraint(equalToConstant: 160).isActive = true
        profileIV.widthAnchor.constraint(equalToConstant: 160).isActive = true
    }
    
    func googleImageSetup() {
        googleImage.image = UIImage(named: "devicon_google")
    }
    
    func facebookImageSetup() {
        facebookImage.image = UIImage(named: "bxl_facebook")
    }
    
    func linkedinImageSetup() {
        linkedinImage.image = UIImage(named: "devicon_linkedin")
    }
    
    //MARK: Setup Labels
    func signInLabelSetup() {
        signInLabel.text = "Sign In"
        signInLabel.font = .boldSystemFont(ofSize: 28)
        signInLabel.textAlignment = .center
    }
    
    func orLabelSetup() {
        orLabel.text = "Or"
        orLabel.textAlignment = .center
        orLabel.font = .systemFont(ofSize: 14)
    }
    
    func forgotLabelSetup() {
        forgotLabel.text = "Forgot Your Password?"
        forgotLabel.font = .italicSystemFont(ofSize: 12)
        forgotLabel.textAlignment = .right
        forgotLabel.trailingAnchor.constraint(equalTo: inputSV.trailingAnchor, constant: 0).isActive = true
    }
    
    func noAccountLabelSetup() {
        noAccountLabel.text = "Don’t have an account.Sign Up"
        noAccountLabel.font = .systemFont(ofSize: 14)
    }
    
    //MARK: Setup TextFields
    func emailTFSetup() {
        emailTF.text = "   Email"
        emailTF.font = .italicSystemFont(ofSize: 14)
        emailTF.textAlignment = .left
        emailTF.layer.cornerRadius = 16
        emailTF.layer.borderWidth = 1
        emailTF.layer.borderColor = UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 0.25).cgColor
        emailTF.widthAnchor.constraint(equalToConstant: 257).isActive = true
    }
    
    func passwordTFSetup() {
        passwordTF.text = "   Password"
        passwordTF.font = .italicSystemFont(ofSize: 14)
        passwordTF.textAlignment = .left
        passwordTF.layer.cornerRadius = 16
        passwordTF.layer.borderWidth = 1
        passwordTF.layer.borderColor = UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 0.25).cgColor
        passwordTF.widthAnchor.constraint(equalToConstant: 257).isActive = true
    }
    
    func signInButtonSetup() {
        signInButton.setTitle("Sign Up", for: .normal)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.widthAnchor.constraint(equalTo: signInView.widthAnchor).isActive = true
        signInButton.layer.cornerRadius = 16
        signInButton.layer.borderWidth = 1
        signInButton.layer.backgroundColor = UIColor(red: 0.133, green: 0.341, blue: 0.478, alpha: 1).cgColor
        
        signInButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToHomePage()
        }), for: .touchUpInside)
    }
    func navigateToHomePage() {
        let homePage = HomePageVC()
        self.navigationController?.pushViewController(homePage, animated: true)
    }
    
    //MARK: Add SubViews
    func addSubViews() {
        mainView.addArrangedSubview(elementsSV)
        mainView.addArrangedSubview(noAccountLabel)
        
        elementsSV.addArrangedSubview(headerSV)
        elementsSV.addArrangedSubview(inputSV)
        elementsSV.addArrangedSubview(signInView)
        elementsSV.addArrangedSubview(socialSV)
        
        headerSV.addArrangedSubview(profileIV)
        headerSV.addArrangedSubview(signInLabel)
        
        inputSV.addArrangedSubview(emailTF)
        inputSV.addArrangedSubview(passwordTF)
        inputSV.addArrangedSubview(forgotLabel)
        
        signInView.addSubview(signInButton)
        
        socialSV.addArrangedSubview(orSV)
        socialSV.addArrangedSubview(socialIconsSV)
        
        orSV.addArrangedSubview(leftLineView)
        orSV.addArrangedSubview(orLabel)
        orSV.addArrangedSubview(rightLineView)
        
        socialIconsSV.addArrangedSubview(googleImage)
        socialIconsSV.addArrangedSubview(facebookImage)
        socialIconsSV.addArrangedSubview(linkedinImage)
    }
}

