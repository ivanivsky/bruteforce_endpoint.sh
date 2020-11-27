input="common.txt"
token="eyJh..."
while IFS= read -r line
do
  echo "Trying: " $line
  resp=`curl -H "Content-Type: application/json" -H "Authorization: Bearer $token" http://192.139.78.3:1337/$line`

  val=`echo "$resp" | wc -c`

  if [[ $val -gt 400 ]]
  then
    echo "============="
    echo "'"$line"' is a valid uri."
    echo "============="
    break
  fi
done < "$input"
