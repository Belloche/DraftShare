# Time Log

| Date | Task | Hours | Notes |
|------|------|-------|------|
| 2-9-21 | Created Site Outline | 2 | Based off project pitch and my own outline |
| 2-19-21 | Chose colors for site and created index.jsp with hardcoded template for reference | 3 | Got sick, so I didn't get nearly as much done as I wanted, but I have what the site should hopefully look like |
| 2-26-21 | Created viewDraft.jsp based off the template (still using template for visual), got sick AGAIN which is not what I like, but I hit my flow now |
| 3-2-21 | Created the database for DraftShare, including a users table and a table for the drafts (which has 96 rows just for the picks) | 3 |
| 3-9-21 | Deployed to AWS with a page displaying data from the database | 7 | Right now I just have one entry and all that is being displayed is the thumbnail, but it will work no problem on the full draft view soon. |
| 3-23-21 | Added user authentication for view draft | 3 | Right now there is one user and only view draft works for the system currently |
| 4-1-21 | Added GenericDao | 2 | I added a GenericDao so I don't have to have as much duped code |
| 4-7-21 | Fixed test package | 4 | I had to fix the test package Database file, everything passes just fine now |
| 4-11-21 | ViewDraft outputs data | 3 | A little more to do so the draft picks are displayed through a loop but ViewDraft does display real data now |
| 4-15-21 | CreateDraft inserts a new draft | 6 | Users can now create and upload a draft and view it on the website | 
| 4-16-21 | CreateDraft is finished | 1.5 | CreateDraft now has required fields, the position doesn't autofill to QB, and there is a confirmation page so the viewDraft works better after you submit |
| 4-2?-21 | CreateDraft is actually done | 3 | CreateDraft is complete with responsive styling |
| 4-?-21 | Bootstrap added | 2 | Bootstrap is making my life a lot easier |
| 4-25-21 | Register User added | 2 | Users can register and login, next to add them to the roles table |
| 4-26-21 | CSS Overhaul, Register creates Role | 2 | Register functions properly and users can access all pages now. I also overhauled css so the page doesn't hurt to look at |
| 4-27-21 | UserPage | 4 | I made a userPage, but it won't load so I'm hoping to debug it when I can |
| 4-28-21 | UserPage Complete | 1 | I completed most of UserPage's functionality, just need to put a change password Servlet |
| 5-3-21 | Implementing Hipo | 6 | Hitting a lot of issues with parsing the JSON into readable objects that I can send for the <select> but I'm figuring it out. |
| 5-4-21 | Hipo Working, Voting Working | 8 | I figured out how to implement Hipo and voting. I also added the reset password functionality |
| 5-5-21 | Implemented Lombok, shortened code | 3 | I shortened over 2k lines of code total in my project by using Lombok on my entities and using c:imports on the position selection |
| 5-6-21 | Added footer, search, delete, logout, and better stylings | 6 | I added a footer, implemented the Delete in User Stories, a log out and a draft search. I also updated a lot of stylings |