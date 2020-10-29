//
//  ViewController.swift
//  WebView

import WebKit

class ViewController: UIViewController {

    /// WebView
    private lazy var webView: WKWebView = {
        
        var webView = WKWebView(frame: .zero)
        view.addSubview(webView)
        return webView
    }()
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        webView.frame = view.bounds
    }
    
    private func webViewReload(url: String) {
        
        guard let url = URL(string: url) else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webViewReload(url: "https://www.baidu.com")
    }
}

