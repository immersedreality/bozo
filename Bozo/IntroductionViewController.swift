
import UIKit

class IntroductionViewController: UIViewController {

    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func letsGoButtonTapped(_ sender: UIButton) {
        presentUsernameEntryAlert()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func presentUsernameEntryAlert() {
        let usernameEntryAlert = UIAlertController(title: "Enter Your BGG Username", message: nil, preferredStyle: .alert)
        let usernameEntryAction = UIAlertAction(title: "Snag my games!", style: .default) { (_) in
            let username = usernameEntryAlert.textFields?[0].text
            self.defaults.set(username, forKey: "username")
            self.dismiss(animated: true, completion: nil)
        }
        
        usernameEntryAlert.addTextField(configurationHandler: nil)
        usernameEntryAlert.addAction(usernameEntryAction)
        present(usernameEntryAlert, animated: true, completion: nil)
    }
}
