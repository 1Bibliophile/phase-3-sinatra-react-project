# Disney Business Model

## Description

Disney Business Model is a web basic API with Sinatra and Active Record that 
supports a React frontend. It is based off of the Walt Disney Company's 
business model of assets and subsidiaries, primarily focusing on their 
broadcasting ventures. For future reference, the assets have a _has many_
relationship to the subsidiaries, while the subsidiaries have a _belongs to_
to the assets.

Disney Business Model uses **Active Record** to access and persist (i.e., store)
data in a database, which will be used by a separate **React frontend** that 
interacts with the database via the API.


## Installation

[**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

## Start Server

You can start the server with:

```console
$ bundle exec rake server
```

This will run the server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Here's a link to the React frontend application:
https://github.com/1Bibliophile/my-app-frontend


## Resources

[Active Record]: https://edgeguides.rubyonrails.org/active_record_basics.html

Any company names mentioned and/or images/logos used are credited to the
Walt Disney Co.
