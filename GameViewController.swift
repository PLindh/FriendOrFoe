//
//  GameViewController.swift
//  Friend or Foe
//
//  Created by Plindh on 11/30/16.
//  Copyright © 2016 Plindh. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var characterLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var rightOrWrongLabel: UILabel!
    @IBOutlet var highLabelTest: UILabel!
    @IBOutlet var forBtn: UIButton!
    @IBOutlet var friBtn: UIButton!
    
    var time = 45
    var timer = Timer()
    var score = 0
    var high = 0
    
    var heroesArray =
       ["Wolverine", "Doctor Strange", "Spider-man","Daredevil","Luke Cage","Hal Jordan","Dick Grayson","Iron Man","Jean Grey","Rorschach","Ant-Man","The Thing","Professor X","The Green Arrow","Deadpool","Nick Fury","Cyclops","Hawkeye","Barry Allen","Black Panther","Aquaman","Hawkman","Beast","Blue Beetle","Gambit","Hank Pym","Black Widow","Nightcrawler","Superboy","Ghost Rider","Wasp","The Flash","Wonder Woman","Rogue","Storm","Shrek","Silver Surfer","Colossus","Captain Marvel","Human Torch","Martian Manhunter","Robin","Mystique","Batman","Iceman","Scarlet Witch","Phoenix","Star-Lord","Vision","Groot","Baby Groot","Raven","Beast Boy","Cyborg","She-Hulk","Hulk","Invisible Woman","Emma Frost","Cable","Iron Fist","Psylocke","Archangel","Rocket Racoon","John Stewart","Nova","Mr. Fantastic","Falcon","Sub Mariner","Havok","Atom","Drax the Destroyer","Gamora","Scott Lang","Jessica Jones","Captain Britain","Captain America","Beta Ray Bill","Hercules","Tick","Squirrel Girl","Taskmaster","Northstar","Elektra","War Machine","Blink","Quicksilver","Juggernaut","Power Man","Thor","Plastic Man","Donna Troy","Steel","Red Tornado","Vixen","Starfire","Huntress","Zatanna","Alan Scott","Mr. Miracle","Big Barda","Booster Gold","Firestorm"]
    var villainsArray =
        ["Dr. Doom", "Venom", "Loki","Cat Woman","Magneto","Joker","Lex Luthor","Galactus","Darkseid","Ra's Al Ghul","Kingpin","Two-Face","Norman Osborn","Red Skull","Sinestro","Black Adam","Brainiac","Bullseye","Ozymandias","Ultron","Apocalypse","Bizarro","Kid MarvelMan","Captain Cold","Doctor Octopus","Mr. Sinister","General Zod","Professor Zoom","Deathstroke","Bane","Gorilla Grood","Vandal Savage","Zoom","Shredder","Baron Helmut Zemo","Mongul","Deadshot","Sabretooth","Harley Quinn","Doomsday","Thanos","Mephisto","Anti-Monitor","Penguin","Metallo","Kraven the Hunter","Abomination","Sebastian Shaw","Dormammu","Hobgoblin","Scarecrow","Riddler","Parasite","Lizard","Leader","Poison Ivy","Kang","Herr Starr","Mr. Freeze","Lucifer Morningstar","Cheetah","William Stryker","Thunderbolt Ross","Sandman","Clayface","Magog","Mr. Mxyzptlk","Proteus","Lady Deathstrike","Mirror Master","Prometheus","Mandarin","Dr. Sivana","Arthur Light","Mysterio","Electro","Shade","Carnage","Parallax","Omni-Man","Annihilus","Omega Red","Despero","Violator","Mastermind","Fin Fang Foom","M.O.D.O.K","Larfleeze","Larfleeze","Black Hand","Blackheart","Black Manta","Black Mask","Crimson Dynamo","Cyber","Dr. Polaris","Firefly","Harry Osborn","Green Goblin","Hush","Inertia"]
    var allCharacters =
         ["Wolverine", "Doctor Strange", "Spider-man","Daredevil","Luke Cage","Hal Jordan","Dick Grayson","Iron Man","Jean Grey","Rorschach","Ant-Man","The Thing","Professor X","The Green Arrow","Deadpool","Nick Fury","Cyclops","Hawkeye","Barry Allen","Black Panther","Aquaman","Hawkman","Beast","Blue Beetle","Gambit","Hank Pym","Black Widow","Nightcrawler","Superboy","Ghost Rider","Wasp","The Flash","Wonder Woman","Rogue","Storm","Shrek","Silver Surfer","Colossus","Captain Marvel","Human Torch","Martian Manhunter","Robin","Mystique","Batman","Iceman","Scarlet Witch","Phoenix","Star-Lord","Vision","Groot","Baby Groot","Raven","Beast Boy","Cyborg","She-Hulk","Hulk","Invisible Woman","Emma Frost","Cable","Iron Fist","Psylocke","Archangel","Rocket Racoon","John Stewart","Nova","Mr. Fantastic","Falcon","Sub Mariner","Havok","Atom","Drax the Destroyer","Gamora","Scott Lang","Jessica Jones","Captain Britain","Captain America","Beta Ray Bill","Hercules","Tick","Squirrel Girl","Taskmaster","Northstar","Elektra","War Machine","Blink","Quicksilver","Juggernaut","Power Man","Thor","Plastic Man","Donna Troy","Steel","Red Tornado","Vixen","Starfire","Huntress","Zatanna","Alan Scott","Mr. Miracle","Big Barda","Booster Gold","Firestorm","Dr. Doom", "Venom", "Loki","Cat Woman","Magneto","Joker","Lex Luthor","Galactus","Darkseid","Ra's Al Ghul","Kingpin","Two-Face","Norman Osborn","Red Skull","Sinestro","Black Adam","Brainiac","Bullseye","Ozymandias","Ultron","Apocalypse","Bizarro","Kid MarvelMan","Captain Cold","Doctor Octopus","Mr. Sinister","General Zod","Professor Zoom","Deathstroke","Bane","Gorilla Grood","Vandal Savage","Zoom","Shredder","Baron Helmut Zemo","Mongul","Deadshot","Sabretooth","Harley Quinn","Doomsday","Thanos","Mephisto","Anti-Monitor","Penguin","Metallo","Kraven the Hunter","Abomination","Sebastian Shaw","Dormammu","Hobgoblin","Scarecrow","Riddler","Parasite","Lizard","Leader","Poison Ivy","Kang","Herr Starr","Mr. Freeze","Lucifer Morningstar","Cheetah","William Stryker","Thunderbolt Ross","Sandman","Clayface","Magog","Mr. Mxyzptlk","Proteus","Lady Deathstrike","Mirror Master","Prometheus","Mandarin","Dr. Sivana","Arthur Light","Mysterio","Electro","Shade","Carnage","Parallax","Omni-Man","Annihilus","Omega Red","Despero","Violator","Mastermind","Fin Fang Foom","M.O.D.O.K","Larfleeze","Larfleeze","Black Hand","Blackheart","Black Manta","Black Mask","Crimson Dynamo","Cyber","Dr. Polaris","Firefly","Harry Osborn","Green Goblin","Hush","Inertia"]
    var allCharactersCopy =
         ["Wolverine", "Doctor Strange", "Spider-man","Daredevil","Luke Cage","Hal Jordan","Dick Grayson","Iron Man","Jean Grey","Rorschach","Ant-Man","The Thing","Professor X","The Green Arrow","Deadpool","Nick Fury","Cyclops","Hawkeye","Barry Allen","Black Panther","Aquaman,","Hawkman","Beast","Blue Beetle","Gambit","Hank Pym","Black Widow","Nightcrawler","Superboy","Ghost Rider","Wasp","The Flash","Wonder Woman","Rogue","Storm","Shrek","Silver Surfer","Colossus","Captain Marvel","Human Torch","Martian Manhunter","Robin","Mystique","Batman","Iceman","Scarlet Witch","Phoenix","Star-Lord","Vision","Groot","Baby Groot","Raven","Beast Boy","Cyborg","She-Hulk","Hulk","Invisible Woman","Emma Frost","Cable","Iron Fist","Psylocke","Archangel","Rocket Racoon","John Stewart","Nova","Mr. Fantastic","Falcon","Sub Mariner","Havok","Atom","Drax the Destroyer","Gamora","Scott Lang","Jessica Jones","Captain Britain","Captain America","Beta Ray Bill","Hercules","Tick","Squirrel Girl","Taskmaster","Northstar","Elektra","War Machine","Blink","Quicksilver","Juggernaut","Power Man","Thor","Plastic Man","Donna Troy","Steel","Red Tornado","Vixen","Starfire","Huntress","Zatanna","Alan Scott","Mr. Miracle","Big Barda","Booster Gold","Firestorm","Dr. Doom", "Venom", "Loki","Cat Woman","Magneto","Joker","Lex Luthor","Galactus","Darkseid","Ra's Al Ghul","Kingpin","Two-Face","Norman Osborn","Red Skull","Sinestro","Black Adam","Brainiac","Bullseye","Ozymandias","Ultron","Apocalypse","Bizarro","Kid MarvelMan","Captain Cold","Doctor Octopus","Mr. Sinister","General Zod","Professor Zoom","Deathstroke","Bane","Gorilla Grood","Vandal Savage","Zoom","Shredder","Baron Helmut Zemo","Mongul","Deadshot","Sabretooth","Harley Quinn","Doomsday","Thanos","Mephisto","Anti-Monitor","Penguin","Metallo","Kraven the Hunter","Abomination","Sebastian Shaw","Dormammu","Hobgoblin","Scarecrow","Riddler","Parasite","Lizard","Leader","Poison Ivy","Kang","Herr Starr","Mr. Freeze","Lucifer Morningstar","Cheetah","William Stryker","Thunderbolt Ross","Sandman","Clayface","Magog","Mr. Mxyzptlk","Proteus","Lady Deathstrike","Mirror Master","Prometheus","Mandarin","Dr. Sivana","Arthur Light","Mysterio","Electro","Shade","Carnage","Parallax","Omni-Man","Annihilus","Omega Red","Despero","Violator","Mastermind","Fin Fang Foom","M.O.D.O.K","Larfleeze","Larfleeze","Black Hand","Blackheart","Black Manta","Black Mask","Crimson Dynamo","Cyber","Dr. Polaris","Firefly","Harry Osborn","Green Goblin","Hush","Inertia"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let highDefault = UserDefaults.standard
        if highDefault.value(forKey: "high") != nil {
            high = highDefault.value(forKey: "high") as! NSInteger!
            highLabelTest.text = NSString(format: "High: %i", high) as String
        }
    }
    
    
    //---------------- Countdown Timer --------------
    @IBAction func onStartTapped(_ sender: UIButton) {
        friBtn.isEnabled = true
        forBtn.isEnabled = true
        //time---
        startButton.setTitle("", for: .normal)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                         selector: #selector(GameViewController.counter), userInfo: nil, repeats: true)
        //-------
        generateRandomCharacter()
    }
    func counter() {
        time -= 1
        timeLabel.text = String(time)
        if time == 0 {
            friBtn.isEnabled = false
            forBtn.isEnabled = false
            timer.invalidate()
            displayWinningMessage(message: "Nice Job! Your final score: \(score)")
            hiscoreMaker()
            resetGame()
        }
    }
    //-----------------------------------------------
    
    
    //------------------ Friend tapped --------------
    @IBAction func onFriendTapped(_ sender: UIButton) {
        if heroesArray.contains(String(characterLabel.text!)) {
            rightOrWrongLabel.textColor = UIColor.green
            rightOrWrongLabel.text = "Correct\n+1"
            fadeViewInThenOut(delay: 0.5)
            score += 1
        }
        else {
            rightOrWrongLabel.textColor = UIColor.red
            rightOrWrongLabel.text = "Incorrect\n-1"
            fadeViewInThenOut(delay: 0.5)
            score -= 1
        }
        if let index = allCharacters.index(of: characterLabel.text!) {
            allCharacters.remove(at: index)
            if allCharacters.count == 1 {
                allCharacters += allCharactersCopy
            }
        }
        scoreLabel.text = NSString(format: "Score: %i", score) as String
        generateRandomCharacter()
    }
    //-----------------------------------------------
    
    func hiscoreMaker() {
        if score > high {
            high = score
            highLabelTest.text = NSString(format: "High: %i", high) as String
            let highDefault = UserDefaults.standard
            highDefault.set(high, forKey: "high")
            highDefault.synchronize()
        }
    }
    
    //------------------ Foe tapped -----------------
    @IBAction func onFoeTapped(_ sender: UIButton) {
        if villainsArray.contains(String(characterLabel.text!)) {
            rightOrWrongLabel.textColor = UIColor.green
            rightOrWrongLabel.text = "Correct\n+1"
            fadeViewInThenOut(delay: 0.5)
            score += 1
        }
        else {
            rightOrWrongLabel.textColor = UIColor.red
            rightOrWrongLabel.text = "Incorrect\n-1"
            fadeViewInThenOut(delay: 0.5)
            score -= 1
        }
        if let index = allCharacters.index(of: characterLabel.text!) {
            allCharacters.remove(at: index)
            if allCharacters.count == 1 {
                allCharacters += allCharactersCopy
            }
         }
         scoreLabel.text = NSString(format: "Score: %i", score) as String
        generateRandomCharacter()
    }
    //-----------------------------------------------
    
    
   //---------- Makes a random Hero or Villain -----
    func generateRandomCharacter() {
        let randomCharacter = allCharacters[Int(arc4random_uniform(UInt32(allCharacters.count)))]
        characterLabel.text = randomCharacter
    }
    //-----------------------------------------------
    
    
    //------------ At Game End ----------------------
    func displayWinningMessage(message:String) {
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okay", style: .default) {
            (action) -> Void in self.resetGame()
        }
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    //-----------------------------------------------
    
    
    //----------------- Animation -------------------
    func fadeViewInThenOut(delay: TimeInterval) {
        
        let animationDuration = 0.25
        
        // Fade in the view
        UIView.animate(withDuration: animationDuration, animations: { () -> Void in
            self.rightOrWrongLabel.alpha = 1
        }) { (Bool) -> Void in
            
            // After the animation completes, fade out the view after a delay
            
            UIView.animate(withDuration: animationDuration, delay: delay, options: .curveEaseInOut, animations: { () -> Void in
                self.rightOrWrongLabel.alpha = 0
            },
                                       completion: nil)
        }
    }
    //-----------------------------------------------
    
    
    //------------------- Reset Game ----------------
    @IBAction func onResetTapped(_ sender: UIBarButtonItem) {
        timer.invalidate()
        resetGame()
    }
    
    func resetGame() {
        rightOrWrongLabel.text = ""
        characterLabel.text = ""
        timeLabel.text = "45"
        time = 45
        score = 0
        scoreLabel.text = NSString(format: "Score: %i", score) as String
        startButton.setTitle("TAP TO START", for: .normal)
    }
    //-----------------------------------------------
  
    
    
    
}
