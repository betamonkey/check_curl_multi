#! /bin/bash
while IFS="," read -r rec_column1 rec_column2 rec_column3
do
  #echo "DEBUG-Checking -->$rec_column1"
  dig "$rec_column1" ns | grep ".*.melbourne.uk.net" && echo "MATCH-->,Domain:$rec_column1,CustomerID:$rec_column2,Status:$rec_column3,Record:NS"
  dig "$rec_column1" soa | grep ".*.melbourne.uk.net" && echo "MATCH-->,Domain:$rec_column1,CustomerID:$rec_column2,Status:$rec_column3,Record:SOA"
  sleep .125
done < <(tail -n +2 input.csv)
