//
//  ViewController.swift
//  AnalogV1
//
//  Created by Vlad on 29.01.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var scrollText: NSScrollView!
    
    override func viewDidAppear() {
        //override func viewDidLoad() {
        //super.viewDidLoad()
        super.viewDidAppear()
        self.view.window?.title = "ANALOG"
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    //-------------------------
    
    func verbose (textLog: String) -> String {
        if textLog.contains("VERBOSE LOG ON"){
            let value = "\n\n- - - VERBOSE LOG ON - - -"
            return value
        } else if textLog.contains("VERBOSE LOG OFF") {
            let value = "\n\n- - - VERBOSE LOG OFF - - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func iOSDataProtection (textLog: String) -> String {
        if textLog.contains("dataProtectionEnabled 1"){
            let value = "\n\n- - - iOS Data Protection ON - - -"
            return value
        } else if textLog.contains("dataProtectionEnabled 0") {
            let value = "\n\n- - - iOS Data Protection OFF - - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func fileContentSearch (textLog: String) -> String {
        if textLog.contains("indexing. Mode = 'contents'"){
            let value = "\n\n- - - Indexing ON - - -"
            return value
        } else if textLog.contains("indexing. Mode = 'filename'") {
            let value = "\n\n- - - Indexing OFF - - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    //-------------------------
    
    func memory (textLog: String) -> String {
        if textLog.contains("Memory Warning"){
            let value = "\n\nMemory Warning"
            return value
        } else {
            let value = ""
            return value
        }
    }

    func AVPlayerItem (textLog: String) -> String {
        if textLog.contains("AVPlayerItem error: (Error Domain=AVFoundationErrorDomain Code=-11836"){
            let value = "\n\n- - -\nError [Audio or video issues]\nAVPlayerItem error: (Error Domain=AVFoundationErrorDomain Code=-11836 \"(Cannot Open)\"\nError in the app: \"(Unable to play current item)\"\n\nSolution: ask to play the file in the Photos app. If the problem does not occur, ask to reboot the device.\nSource: Knowledge Base by Anastasiia Mirza\n- - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func exp_4390 (textLog: String) -> String {
        if textLog.contains("{ URL: https://webdav.yandex.ru/ } { Status Code: 401, Headers {"){
            let value = "\n\n- - -\nError [Yandex]\n{ URL: https://webdav.yandex.ru/ } { Status Code: 401,\nJira: https://j.readdle.com/browse/EXP-4390\nImpossible to add a particular Yandex.Disk account\n\nSolution: first of all, ask the user to make sure passwords are disabled under the account settings\n- - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func exp_4721 (textLog: String) -> String {
        if textLog.contains("DropboxAPI Code=409 \"(null)\" UserInfo={ErrorContent=path/disallowed_name/"){
            let value = "\n\n- - -\nError [Dropbox]\nDropboxAPI Code=409 \"(null)\" UserInfo={ErrorContent=path/disallowed_name/\nJira: https://j.readdle.com/browse/EXP-4721\nDropbox: Error message about not enough free space on a server is displayed when a file in synced folder has a disallowed title\n\nSolution: ask the user rename the files\n- - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func exp_4789 (textLog: String) -> String {
        if textLog.contains("Your device is required to be managed to access this resource"){
            let value = "\n\n- - -\nError [OneDrive for Business]\nYour device is required to be managed to access this resource\n\nJira: https://j.readdle.com/browse/EXP-4789\nOneDrive MDM support\n\nConfluence: https://c.readdle.com/pages/viewpage.action?pageId=3771043#GuidelinesforPDFExpert(iOS)/Documentsknownissues-4.1OneDriveloginissues\n- - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func ownership (textLog: String) -> String {
         if textLog.contains("An administrator needs to claim ownership of the company"){
             let value = "\n\n- - -\nError [OneDrive for Business]\nAn administrator needs to claim ownership of the company\n\nConfluence: https://c.readdle.com/pages/viewpage.action?pageId=3771043#GuidelinesforPDFExpert(iOS)/Documentsknownissues-4.1OneDriveloginissues\nSolution: ask the user to contact the admin of the organization; it looks like he/she should configure the access\n- - -"
             return value
         } else {
             let value = ""
             return value
         }
    }
    
    func chinese (textLog: String) -> String {
         if textLog.contains("NSLocalizedDescription=请求超时"){
             let value = "\n\n- - -\nError [OneDrive]\nNSLocalizedDescription=请求超时\n\nConfluence: https://c.readdle.com/pages/viewpage.action?pageId=3771043#GuidelinesforPDFExpert(iOS)/Documentsknownissues-4.1OneDriveloginissues\n\nSolution: The issue occurs due to specific characteristics of Chinese network; the authorization fails due to the timeout.\n- - -"
             return value
         } else {
             let value = ""
             return value
         }
     }
    
    func exp_4399 (textLog: String) -> String {
        if textLog.contains("(com.microsoft.graphsdk.autherror-Fehler 4.)"){
            let value = "\n\n- - -\nError [OneDrive for Business]\n(com.microsoft.graphsdk.autherror-Fehler 4.)\n\nJira: https://j.readdle.com/browse/EXP-4399\nOneDrive for Business: Can't login into cloud storage via attached german account\n\nConfluence: https://c.readdle.com/pages/viewpage.action?pageId=3771043#GuidelinesforPDFExpert(iOS)/Documentsknownissues-4.1OneDriveloginissues\n- - -"
            return value
        } else {
            let value = ""
            return value
        }
    }
    
    func exp_3686 (textLog: String) -> String {
         if textLog.contains("Due to a configuration change made by your administrator, or because you moved to a new location, you must use multi-factor authentication"){
             let value = "\n\n- - -\nError [OneDrive for Business]\nDue to a configuration change made by your administrator, or because you moved to a new location, you must use multi-factor authentication\n\nJira: https://j.readdle.com/browse/EXP-3686\nNetwork Section: No ability to add OneDrive account due to specific error.\n\nConfluence: https://c.readdle.com/pages/viewpage.action?pageId=3771043#GuidelinesforPDFExpert(iOS)/Documentsknownissues-4.1OneDriveloginissues\n\nSolution: Step1. Do you use conditional access https://docs.microsoft.com/en-us/azure/active-directory/active-directory-conditional-access-policy-connected-applications? If so, please contact the admin of your organization to configure rights.\nStep2. If conditional access is not used:  уточнить у сисадмина, не менялись ли в последнее время права для его аккаунта, и вообще, не делались ли какие-то изменения; спросить, мог ли он раньше + может ли сейчас залогиниться в другие аппы c теми же credentials, в т.ч. обычный клиент OneDrive\n- - -"
             return value
         } else {
             let value = ""
             return value
         }
     }
    
    //-------------------------
    
    @IBAction func selectFile(_ sender: Any) {
        //create a new instance of the NSOpenPanel
        let dialog = NSOpenPanel();
        
        //set some properties
        dialog.title                   = "Choose a .txt file";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = true;
        dialog.allowsMultipleSelection = false;
        dialog.allowedFileTypes        = ["txt"];
        
        //open the actual dialog: dialog.runModal(). We check for the return value of runModal() so we can ignore it if the user cancelled the modal
        if (dialog.runModal() == NSApplication.ModalResponse.OK) {
            let result = dialog.url // Pathname of the file
            
            if (result != nil) {
                let path = result!.path
                
                //read txt file
                let contentFromFile = try! NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
                
                //convert to array
                let stringToSplit = contentFromFile.components(separatedBy: "\n")
                
                //display first 15 raws
                let textNew = stringToSplit.prefix(15)
                
                //array to string separated by line translation
                let textNewString = textNew.joined(separator: "\n")
                
                //let logs = contentFromFile as String
                
                let split = "\n\n- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
                
                let varVerbose = verbose (textLog: contentFromFile as String)

                let varMemory = memory (textLog: contentFromFile as String)
                
                let variDP = iOSDataProtection (textLog: contentFromFile as String)
                
                let varIndexing = fileContentSearch (textLog: contentFromFile as String)
                
                let varAVPlayerItem = AVPlayerItem (textLog: contentFromFile as String)
                
                let var_exp_4390 = exp_4390 (textLog: contentFromFile as String)
                
                let var_exp_4721 = exp_4721 (textLog: contentFromFile as String)
                
                let var_exp_4789 = exp_4789 (textLog: contentFromFile as String)
                
                let var_ownership = ownership (textLog: contentFromFile as String)
                
                let var_chinese = chinese (textLog: contentFromFile as String)
                
                let var_exp_4399 = exp_4399 (textLog: contentFromFile as String)
                                
                let var_exp_3686 = exp_3686 (textLog: contentFromFile as String)
                
                

                let varResult = textNewString + split + varVerbose + variDP + varIndexing + split + varMemory + varAVPlayerItem + var_exp_4390 + var_exp_4721 + var_exp_4789 + var_ownership + var_chinese + var_exp_4399 + var_exp_3686
                
                
                
                //insert text into scrolltext
                let textField = scrollText.contentView.subviews.first(where: { $0 is NSTextView }) as? NSTextView
                
                if let textField = textField {
                    textField.string = varResult
                }
                
            }
        } else {
            // User clicked on "Cancel"
            return
        }
    }
}
