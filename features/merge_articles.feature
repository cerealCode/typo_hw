Feature: Merge Articles
    As a blog administrator
    In order to remove duplicated articles
    I want to be able to merge articles with same topic

    Background: articles and users have been added to database

        Given the blog is set up

        Given the following users exist:
            | profile_id | login  | name  | password | email            | state  |
            | 2          | user_1 | User1 | 1111111  | usr1@example.com | active |
            | 3          | user_2 | User2 | 2222222  | usr2@example.com | active |

        Given the following articles exist:
            | id | title    | author | user_id | body     | allow_comments | published | published_at        | state     | type    |
            | 3  | Article1 | user_1 | 2       | Content1 | true           | true      | 2013-24-08 22:30:00 | published | Article |
            | 4  | Article2 | user_2 | 3       | Content2 | true           | true      | 2013-24-08 23:00:00 | published | Article |

        Given the following comments exist:
            | id | type    | author | body     | article_id | user_id | created_at          |
            | 1  | Comment | user_1 | Comment1 | 3          | 2       | 2013-24-08 23:31:00 |
            | 2  | Comment | user_1 | Comment2 | 4          | 2       | 2013-24-08 24:01:00 |
    Scenario: An admin can merge articles
	Given I am logged in as "admin" with pass "aaaaaaaa"
	And I am on the Edit Page of Article with id 3
