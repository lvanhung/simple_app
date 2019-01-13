# How does the app work ?

1. pull the project to local machien: `Git clone git@github.com:lvanhung/simple_app.git`
2. Migration database: `rake db:migrate `
3. start:  `rails s`
4. visit urls one by one
  ```
  http://localhost:3000/question1/answer
  http://localhost:3000/question2/answer
  http://localhost:3000/question3/answer
  http://localhost:3000/question4/answer
  http://localhost:3000/question5/answer

  curl --request POST \
         --url http://localhost:3000/api/event_logs \
         --header 'content-type: application/json' \
         --data '{"event_name": "test","timestamp":"2017-10-01 06:00:01"}'

  ```