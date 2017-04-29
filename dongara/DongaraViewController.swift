//
//  Created by _DG_YOUR_NAME_ on _DG_CREATED_DATE_.
//  _DG_YOUR_COPYRIGHT_
//

import UIKit

class DongaraViewController: UIViewController, UIWebViewDelegate{
    
    
    @IBOutlet weak var webView: UIWebView!
    
    // MARK: - lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource:"App", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: path!)
        
        if let urlValue = dictionary?.object(forKey:"AppUrl") {
            let urlStr = urlValue as! String
            print("will go to : \(urlStr)")
            let url = URL(string: urlStr)
            let request = URLRequest(url: url!)
            webView.delegate = self
            webView.loadRequest(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - delegates

    // MARK: - UIWebViewDelegate
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("finished")
    }
}

