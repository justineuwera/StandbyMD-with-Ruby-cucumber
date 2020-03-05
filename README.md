# StandbyMD-with-Ruby-cucumber

## Purpose

- Specify how standbyMD is supposed to behave
- Execute the test cases automatically  against the system to confirm that it behaves as per expectations.

## Initial Setup

1. Install Ruby via

- Windows OS: https://rubyinstaller.org/downloads/
- Mac OS: https://rvm.io/
2. Install Cucumber using the following command-line command:

       $ gem install cucumber
 
3. Initialize Cucumber by using the following command-line command:

       $ gem init cucumber
       
4. Install Watir using the following command-line command:

        $ gem install watir 
5. Install Webdrivers using the following command-line command:

       ` $ gem install webdrivers`
6. Install Page-object by using the following command-line command:

       `$ gem install page-object`
7. Download either Visual Studio Code or RubyMine from the links below
and Install it:
- https://code.visualstudio.com/
- https://www.jetbrains.com/fr-fr/ruby/

## Install Dependencies

$ git clone “https://github.com/justineuwera/StandbyMD-with-Ruby-cucumber.git" 

$ cd StandByMD_Project 

## Specification Execution

To run all feature files:

                 $ cucumber  

To run a specific feature file:

            $ cucumber features/<feature File Name.feature>
            
            Example: $ cucumber features/login_client.feature

## Target Environment Selection

We are using the following environment:

* `Staging environment`

             Link :https://standbymd-qa3.globalexcel.com/#!
             
* `Username: qa1@globalexcel.com`
* `Password: Ask the Administator `

## Test cases Used

* `Contact form`
* `End call functionality`
* `Happy flow - yes Emergency`
* `Login on StandbyMd as Client`
* `Member details form `

## Vocabulary

Wording/naming of objects/entities that exist in StandbyMD.

### Entities:

* `Client users`
* `Emergency flow`
* `Non Emergency Flow`
* `Demographics`
* `Location `
* `Telemedicine `
* `Symptoms`
* `House visit `
* `Concierge care`
* `Emergency room`
* `Hospital`
* `Pharmacy `
 
## Components

* `main header`
* `Client Sign-in button `
* `Sign in button`
* `Yes button `
* `No button`
* `Location `
* `End call icon`
* `Add contact icon `
* `Password: Ask the Administator `
* `Next button `
* `Nearest hospital link`
* `Ok button `
* `Member details form`
* `Submit button (yes Happy flow) `
* `Save button `
* `Skip button `
