Feature: the world-changing foo file 

  Background:
    Given a Vagrant VM with tdd-example deployed is up and running

  Scenario: check the foo file 
    When I ssh into the Vagrant VM 
     And look at the foo file
    Then it should say "hey, I'm running on ubuntu!" 