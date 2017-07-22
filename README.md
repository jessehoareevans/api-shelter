# _Animal Shelter API_

#### By _**Jesse Hoare Evans**_

## Description

API app that allows the user to return information regarding animals that are listed at an animal shelter

## Functionality
Endpoints for GET (all and by id), POST, PUT and DELETE.

A RANDOM endpoint that randomly returns an animal.

A second custom endpoint that accepts a name and returns all animals that share that name.

Serialization of parameter (name, breed and age)

Thorough exception handling.

Complete testing with request specs.

Randomized data with Faker.

## Installation
------------

```
$ git clone https://github.com/jessehoareevans/api-shelter.git
$ cd animal_shelter
```

Install required gems:
```
$ bundle install
```

Install postman app:
```
https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en
```

Start postgres:
```
$ postgres
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ rails s
```

## Using this app

1. Open the postman app

* To see all of the dogs  
  * Select 'GET' method and copy http://localhost:3000/dogs
* To see all of the cats
  * Select 'GET' method and copy http://localhost:3000/cats

* To see a specific dog by id  
  * Select 'GET' method and copy http://localhost:3000/dogs/ followed by the id number associated with the dog
* To see a specific cat by id
  * Select 'GET' method and copy http://localhost:3000/cats/ followed by the id number

* To delete a specific dog by id  
  * Select 'DELETE' method and copy http://localhost:3000/dogs/ followed by the id number associated with the dog
* To delete a specific cat by id
  * Select 'DELETE' method and copy http://localhost:3000/cats/ followed by the id number

* To update a specific dog by id  
  * Select 'PATCH' method and copy http://localhost:3000/dogs/ followed by the id number associated with the dog then change the value in the "Body" portion of postman.
* To update a specific cat by id
  * Select 'PATCH' method and copy http://localhost:3000/cats/ followed by the id number then change the value in the "Body" portion of postman.

* To see a specific dog by breed  
  * Select 'GET' method and copy http://localhost:3000/dogs?breed= followed by the breed of dog you want to see
* To see a specific cat by name
  * Select 'GET' method and copy http://localhost:3000/cats?name= followed by the name of the cats you want returned

* To see a random dog
  * Select 'GET' method and copy http://localhost:3000/dogs?random_dog=
* To see a random cat
  * Select 'GET' method and copy http://localhost:3000/cats?random_cat


## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails, HTML, CSS_

### License

*MIT*

Copyright (c) 2017 **_Jesse Hoare Evans_**
