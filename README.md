## EDGE MARKET ANALYTICS README

This project is our first solo endeavor into a full stack program. I am eager to see what I can develop!


KNOWN ISSUES:
1. Search function for brokerage works for literal. Wildcard not working.
2. Address truncated in edit view.
3. Request mapping for agent stats YTD calls "average" method but I've changed the query to Sum (more useful stat for agents). Need to update the method name through the path.   
4. Sort on the list by brokerage should be descending
5. (FIXED) Brokerage report text values are "average" but sql is "sum"
6. (FIXED) Brokerage standing qry not functional, returning NPE
7. Report formatting (e.g., brokerage list, \t not working for example)
