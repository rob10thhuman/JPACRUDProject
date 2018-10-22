## EDGE MARKET ANALYTICS README

This project is our first solo endeavor into a full stack program. I am eager to see what I can develop!

EPILOGUE: I REALLY enjoyed building this full stack program. It really helped me connect several concepts, from JSPs to the request mapping for the same, to the Controller and logic behind the model, to the entities and how everything connects, to the mySQL and JPQL. Really just a fascinating project.

One of my biggest wins internally for this project...well, two...are 1) Conceptualizing what I wanted the jsp to display, then building it from scratch to make it happen and 2) identifying w/out assistance why I couldn't update my entity (I was passing the house object back into my model vs updatedHouse). To identify this, I "simply" followed the flow of the action from the jsp back through and the error jumped out at me. This may seem small but to me represented a breakthrough in understanding the flow and thus the related concepts.

My biggest challenge was figuring out / understanding the concepts behind the flow of initiating the jpql query, understanding how I needed to get the results, then pass them back to the controller (and how to "speak to" those objects, and get them to display in the jsp).

KNOWN ISSUES:
1. Search function for brokerage works for literal. Wildcard not working.
2. Address truncated in edit view.
3. Request mapping for agent stats YTD calls "average" method but I've changed the query to Sum (more useful stat for agents). Need to update the method name through the path.   
4. Sort on the list by brokerage should be descending
5. (FIXED) Brokerage report text values are "average" but sql is "sum"
6. (FIXED) Brokerage standing qry not functional, returning NPE
7. Report formatting (e.g., brokerage list, \t not working for example)
8. cp/lp ratio substring out of bounds at 4 but shouldn't be happening
9. (FIXED) Closed price change not working
10. How do I pull the fields into JSP vs passing the object alone back and iterating across it?

FUTURE DEVELOPMENT:
1. "Beautify" the reports.
2. Drop down menus for some selections.
3. Add a table for the agents names and link it to NRDS so I can display, use, agent name vs. NRDS.
4. I would like to have some of these results "appear" on the home page vs redirecting to another jsp. Can you redirect to same jsp that displays data that's only available on a submit?
