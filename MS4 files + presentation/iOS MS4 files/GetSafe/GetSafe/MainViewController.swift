//
//  MainViewController.swift
//  GetSafe
//
//  Created by Khalid A. Mohamed on 1/22/21.
//  Copyright © 2021 Khalid A. Mohamed. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {

    var abortClicked = false
    var player: AVAudioPlayer?


    @IBOutlet weak var logout: UIButton!
    @IBOutlet weak var profile: UIButton!
    @IBOutlet weak var settings: UIButton!
    @IBOutlet weak var harassmap: UIButton!
    @IBOutlet weak var abort: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emergencyBtnOutlet.layer.cornerRadius = 150
        emergencyBtnOutlet.clipsToBounds = true
        
        logout.isHidden = true
        profile.isHidden = true
        settings.isHidden = true
        harassmap.isHidden = true
        abort.isHidden = true
    }
    
    
    @IBAction func navBtn(_ sender: UIButton) {
        logout.isHidden = !logout.isHidden
        profile.isHidden = !profile.isHidden
        settings.isHidden = !settings.isHidden
        harassmap.isHidden = !harassmap.isHidden
    }
    
    @IBAction func logoutBtn(_ sender: UIButton) {
    }
    
    @IBOutlet weak var emergencyBtnOutlet: UIButton!
    
    
    
    @IBAction func abortClicked(_ sender: UIButton) {
        abortClicked = true
        abort.isHidden = true
    }
    
    
    @IBAction func emergencyBtnLift(_ sender: Any) {
        
        playSound()
        
        let alertController = UIAlertController(title: "Danger", message:
        "Running Emergency Action", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            self.player?.stop()
        }))

        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func emergencySyke(_ sender: Any) {
        abort.isHidden = false
        if (abortClicked) { return }
        print("ok")
        
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "/Sounds/Danger.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    
    
    
    

}
