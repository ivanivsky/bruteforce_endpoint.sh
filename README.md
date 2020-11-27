# bruteforce_endpoint.sh

Bash template for bruteforce enumeration of endpoints. 

Once you've retrieved a valid endpoint, you have to modify the output in order to grep for anything. 
- To do this, use the python module json.tool. It formats the output into json which is then greppable. 
- Example: less output_raw.txt | python -m json.tool > output_json.txt
