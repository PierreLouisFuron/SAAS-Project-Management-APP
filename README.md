# SAAS Project Management App

This is my take on the SAAS Project Management App from the Udemy course "The Complete Ruby On Rails Developer Course". 

Contrary to the course, it based on Rails 7 and I am not using Milia not any other outdated gem. 
All the multi-tenancy features have been added manually. 

BUGS : 
- when going to the Sign In page, then to another page, then back to the Sign In page, the `credit_card_form.js` file is not loaded properly and the form behaves in a weard way : the `Plan` dropdown doesn't trigger the card section change and paying for a premium plan doesn't work (but if works just fine if you refresh the page entirely).

This is partly due to Turbo only reloading part of a webpage to make the application faster. If you disable turbo from the application, then all webpaged are reloaded entirely when moving to another page (but I wanted to keep turbo)