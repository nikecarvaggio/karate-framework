Feature: Create and update user

  Scenario Outline: Create User

    #Create user
    * call read("../post/post-user.feature@CreateUser") { username: "#(username)", firstName:"#(firstName)" , lastName:"#(lastName)", email:"#(email)", password:"#(password)", phone:"#(phone)", userStatus:"#(userStatus)"}
    Examples:
    |username       |firstName|lastName  |          email            |password|phone       |userStatus|
    |carvaggio6     |Nicolas  |Caraballo |nicolas.caraballo@test.com | 1234   |3008412312  | 0        |

  Scenario Outline: Search User
    * call read("../get/get-user.feature@SearchUser") { username: "#(username)" }
    Examples:
      |username       |firstName|lastName  |          email            |password|phone       |userStatus|
      |carvaggio6     |Nicolas  |Caraballo |nicolas.caraballo@test.com | 1234   |3008412312  | 0        |

  Scenario Outline: Update name and email User
    * def result = call read("../get/get-user.feature@SearchUser") { username: "#(username)" }
    * def userInfo = result.userData
    * call read("../put/put-user.feature@UpdateNameEmailUser") { id: "#(userInfo.id)", username: "#(username)", firstName:"#(firstName)" , lastName:"#(lastName)", email:"#(email)", password:"#(password)", phone:"#(phone)", userStatus:"#(userStatus)"}
    Examples:
      |username      |firstName    |lastName  |          email                 |password|phone       |userStatus|
      |carvaggio6     |Nicolas Edit |Caraballo |nicolas.caraballo.edit@test.com | 1234   |3008412312  | 0       |

  Scenario Outline: Search Updated User
    * def result = call read("../get/get-user.feature@SearchUser") { username: "#(username)" }
    * def userInfo = result.userData
    * match userInfo.firstName != "#(firstName)"
    * match userInfo.email != "#(email)"
    Examples:
      |username       |firstName|lastName  |          email            |password|phone       |userStatus|
      |carvaggio6     |Nicolas  |Caraballo |nicolas.caraballo@test.com | 1234   |3008412312  | 0        |