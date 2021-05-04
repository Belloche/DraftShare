Week 1
1/23/2021

Chose my project goal
Wrote problem statement

I have a pretty good idea of what I'm going to do for the project, I think the harder parts
of what I want to do might get a little hairy like with a possible upvote system.
I also want to let users change the draft order so I'm narrowing down how I'll
accomplish that.


Week 2
2/1/2021

Created my repository

After some trouble getting my project created properly I finally have it pushed to git.

Week 4
2/9/2021

I finished up what I want the project to do without overextending and started choosing a color scheme

Week 5
2/19/2021

Got sick and only got index.jsp completed, but the visual is just about what I want. Visual right now is only a reference template but gets across what it will look like

Week 6
2/26/2021

Got sick again which is unfortunate, got viewDraft.jsp in with another template. I think I can do this pretty well now.

Week 7
3/2/2021

I created the database for the project, now for the DAO. Will update this entry when it is completed.

Week 8
3/9/2021

I missed this entry when I was working, but I have deployed the project to AWS. I also fleshed out the home page a bit and the thumbnail on the site is data from the database on AWS. The Full Draft page is still hardcoded but I will be getting to that. Next week when I get back from my vacation I will be implementing a login for Checkpoint 3.

Week 9
3/23/2021

Last week was Spring Break, and now that I'm back I'm adding login capability to DraftShare and the login page.

Week 10
4/1/2021

I implemented the GenericDao (ProjectDao.java) finally, should help the project stay a little more contained.

Week 11
4-5-21

My tests are failing, something is wrong with @BeforeEach and it won't reset the DB to the stock data :(

4-7-21

I finally got my tests passing again! I don't really know what happened with my testUtils Database, but I replaced it with the Database file I have in main and now it runs fine. I also had to modify my update test so it passes.

4-11-21

Got ViewDraft looking a lot better now but I need to rework it this week so it displays data better and keep line count a little smaller.

4-15-21

ViewDraft has been fleshed out almost completely, the only issue I'm having is when you upload a draft I want to redirect them to a viewDraft page with their draft but it won't work for some reason on the ViewDraft end. I can figure something out where it just redirects to the home page and has a message box for success, and I also need to add a couple last details to make sure the positions that are left empty don't go to QB, and I need to make sure that the notNull items are required, but it's almost done.

4-16-21

ViewDraft is finished! I added required fields and added a confirmation page for better navigation to the viewDraft after you submit a draft.

4-20-21

I created the User object and added a getLogo method to the Draft object, now I'm adding logos to viewDraft but I can't get the image path right so I'm sending a message to slack in hopes of figuring it out.

4-21-21

I fixed up the images for the teams so they display with a nice size. I also added them to index too. Next I made CreateDraft look waaaay better with responsive design.

4-23-21

I added a register page to the login screen and added bootstrap styling to the forms so it looks a lot better. I want to add a little more bootstrap to the backgrounds of the nav and body so the colors look better, I need to add regex to the fields in register, and I need to add to the register servlet.

4-25-21

I added to the register page, but users can't gain access to the pages yet since they aren't added to the roles table.

4-26-21

I overhauled css based on the NFL logo, so instead of gross green and grey it uses red and blue.

4-27-21

I added a UserPage but it just gets a 500 Internal Server Error. It might be something with findByPropertyEqual.

4-28-21

I fixed UserPage so it displays the right information! Now to figure out upvoting and downvoting, change password, and a Search. ALso going to deploy the new WAR to AWS.

5-3-21

Implementing the Hipo api is going very slowly. Just can't figure out how to get the results from the url into a readable array. I feel like I'm this close to crushing it but only time will tell.

5-4-21

The force is with me! I figured out how to get the JSON to work right from Hipo and it is implemented in the draft creator. I also implemented upvoting.