

## User Stories

### User Story 1
```
As a web user 
So that I can access websites I regularly visit
I'd like to see list of saved bookmarks
```

#### Domain Model


| Nouns   | Verbs     |
|---------|-----------|
|Bookmarks| Show list |
|List     |           |


| Nouns   | Property/ Owner|
|---------|-----------     |
|Bookmarks| Owner          |
|List     | Owner          |


| Actions  | Owned by?  |
|--------- |----------- |
|print_list| List       |



| Actions  |Property it reads or changes |
|--------- |-----------                  |
|print_list| @bookmark_list              |


|Class     | Bookmark    |
|--------- | ----------- |
|Properties| @url, @title|
|Actions   | initialize  |



Class     | List| 
---------|----------|
 Properties |  @bookmark_list | 
 Actions | print_list | 


#### Diagram planning: 
* REQUEST: client visits /bookmarks (get request) (client --> controller/server)
* controller (app.rb) asks Bookmark class (model) to retrieve bookmarks (#print_list) (server --> model)
* the Bookmark class returns all stored bookmarks as array (model --> controller/server)
* controller renders the [bookmarks] array to webpage (HTML) view (controller --> view --> controller)
* RESPONSE: This view is sent to the user as a response (controller --> client)

#### User Story 1 Features: 
  1. a Controller
  2. a Bookmark class
  3. a bookmark view
  
  ![user_story_1.png](./public/images/user_story_1.png)