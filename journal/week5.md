# Week 5 — DynamoDB and Serverless Caching

## Objectives

### Main Tools

<ol>
  <li>boto3 SDK</li>
  <li>DynamoDB</li>
  <li>Lambda</li>
</ol>

In this week, we worked on DynamoDB, a fully managed NoSQL database from AWS.

The main objectives this week were to use DynamoDB to implement message groups, send messages, and store them in DynamoDB.

In order to do this, we started off by creating the following bash scripts to handle our DynamoDB data.

```
./bin/ddb/schema-load
./bin/ddb/seed
./bin/ddb/scan
./bin/ddb/patterns/list-conversation
./bin/ddb/patterns/get-conversation

```
![ddbprod](https://user-images.githubusercontent.com/125153369/230673932-06c3b280-75a7-4034-9c5a-eb712dca14b6.PNG)

![ddbscan](https://user-images.githubusercontent.com/125153369/230673909-5fec5ae3-816b-466f-b9e5-13e254ee9300.PNG)

![ddbconversation](https://user-images.githubusercontent.com/125153369/230673885-19c7087f-c08c-42c1-a010-a03dafd89d61.PNG)

Alongside these bash scripts, sql files were created to get uuid from the cognito user id, and define the difference between the sender and reciever.
A python file was also made to define functions to create, list, and set messages/message groups using the boto3 SDK for DynamoDB. 

We used a lambda handler function to act as a DynamoDB trigger for DynamoDB streams, and could successfully view messages posted in Cruddur in our DynamoDB table.
![ddbmessagerecords](https://user-images.githubusercontent.com/125153369/230673782-603779a4-681a-44c3-be35-f7b699d767ec.PNG)

#### Default message convo
![message](https://user-images.githubusercontent.com/125153369/230673972-149b88dc-74e6-4d9b-89be-68560081b6da.PNG)

#### Post messages to new user in Cruddur
![londo](https://user-images.githubusercontent.com/125153369/230673724-b448d932-312a-42a5-a582-49def53a4465.PNG)


### Challenges

Some of the challenges faced for this part of the bootcamp were among the following:

1. CORS errors:
  **  CORS errors can be tricky, as it can seem difficult to pinpoint what exactly is causing the error, but with enough sleuthing, troubleshooting, trial and error, a     solution was found.
2. NoneType errors relating to uuid:
  * This fix was found by a fellow bootcamper, who found out uuid values for users in development and prod needed to match to fix the NoneType error 
3. undefined/misspelled variables, function names
  * This may seem trivial, but with a lot of files to comb over, as well as variables, classes, etc. it can be easy to miss and was something I had come across.
4. /@ causing issues
  * Ctr+Shift+F is definitely a friend for spotting unwanted characters (in this case, the @ that came before messages , messages/.handle) in the codebase!!! 



### Conclusion

Overall, this was a very challenging part of the bootcamp. I can say that I do feel more confident in my troubleshooting abilities, as well as my overall knowledge  picking up. 


