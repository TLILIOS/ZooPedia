//
//  DetailAnimalController.swift
//  AnimalsGroup
//
//  Created by HTLILI on 12/04/2024.
//

import UIKit
import AVFoundation
class DetailAnimalController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var playButton: UIBarButtonItem!
    
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var descriptionText: UITextView!
    
    var animal: Animal!
    var synth = AVSpeechSynthesizer()
    var utterance: AVSpeechUtterance?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = animal.name
        animalImage.image = UIImage(named: animal.imageString)
        descriptionText.text = animal.desc
        utterance = AVSpeechUtterance(string: animal.desc)
        utterance?.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        utterance?.rate = 0.5
    }
    
    @IBAction func speak(_ sender: UIBarButtonItem) {
        if utterance != nil {
            if synth.isSpeaking {
                synth.stopSpeaking(at: .immediate)
            } else {
                synth.speak(utterance!)
            }
            
        }
    }
    
    
    
}
