Required: Rails 6.0.3.5 or higher

________________________________________________________________________________
Before start:
Open the terminal and "cd" to "project folder"

# instal js packages and gems
bundle install
yarn install


# create/migrate/seed data base
rails db:create db:migrate db:seed

# to launch the server
rails server

________________________________________________________________________________
How to use the API (SPECTRM test challenge):

- index (all messages)
endpoint: GET /api/v1/messages

- show (one message according to its ID)
endpoint: GET /api/v1/messages/:id

- update (one message according to its ID)
endpoint: PATCH /api/v1/messages/:id

          -Header: Content-Type: application/json
          -Body: { "message": { "content": "Replace with your content", "counter": 1 } }
          *(enter any integer values for counter, by default counter=1)

- create
endpoint: POST /api/v1/messages

          -Header: Content-Type: application/json
          -Body: { "message": { "content": "Replace with your content"} }

-destroy (delete an message according to its ID)
endpoint: DELETE /api/v1/messages/:id

________________________________________________________________________________
Features to add:
1) Users table in DB
2) Reference between Users and Messages tables
3) Authentification of the user
4) Develop an authorisation algoritm wich will allow to Update and Destroy Messages only for User who created them.
