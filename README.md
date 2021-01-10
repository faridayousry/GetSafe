CSCE4930 01 - Selected Topics in CSCE (2021 Winter) 

Mobile Applications Development

Dr.Mohamed Shalan <br/>

 
 <br/>
 
Initial Project Proposal 


  GetSafe® 
 
 <br/>
 
Farida T. Yousry	900171942

Bassel Shabana	900162270

Khalid  Mohamed	900153041

Steven Roseik		900171807

 
 <br/>


1. PROJECT OVERVIEW

1.1 Design Rationale & Community Deployment

GetSafe aims to address the prevalence of harassment and assault through providing means of protection and prevention for victims in order to limit the harm that affects them.The system acts as a personal bodyguard that the user can call on in threatening situations. The central feature of the app is a button that the user can press on while walking near dangerous individuals, and when released it automatically calls the police, sends the user’s live location to their emergency contact, along with other protective measures selected by the user beforehand.

 
 <br/>

1.2 Application Features

When the Emergency button is pressed and released, the applications can perform a subset of the following actions based on the user’s preferences:
      
      -Call the police/local authorities
      
      -Send the user's live location to the trusted contacts list, 
      
      -Send a customised message to the trusted contacts list, 
      
      -Set off a loud 120 dB alarm to alert people nearby & scare the attacker(s), 
      
      -Record audio/video footage.
      
*All of the above can be switched on/off by the user.

 <br/>
 
 
2. SYSTEM OVERVIEW

 2.1 Main Activities

  -Login Activity:
  
      Users can enter their credentials to login into an existing account or create a new one.
      
  -User Information Activity:
  
      Users can enter their personal information such as emergency contact information to be used in case of emergency.
      
  -Emergency Activity:
  
      Where the user can deploy the emergency button which will trigger the list of services, such as calling the police. 
      
  -Settings Activity:
  
      Will have a list of options through which the user can edit his/her profile, manage settings for emergency triggers(live location, recording), and edit the list of trusted emergency contacts.
      
  -HarassMap Activity:
  
      Will provide hot spots on a map for where there happens to be a lot of harassment. This will be provided through 
      the HarassMap website.

 
 <br/>
 
Service providers would be the Phone app for calling the police, Whatsapp for sending the user’s live locations to emergency contacts, Panik or Attack Alarm SMS  for the loud alarm siren, the Camera and Voice memo apps for recording, and HarassMap for the harassment hotspot mapping service.

 
 <br/>
 
2.2 MVC Model

  Model:
  
    -User information 
    
    -Settings 
    
    -Profile Edit
    
  View
  
    -User interface for all activities
    
    -User input design
    
    -Button display & interactions
    
  Control
  
    -Updating the user info 
    
    -Initiating any of the application features when the emergency button is released.
    
     
 <br/>
