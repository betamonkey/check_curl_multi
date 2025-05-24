while read LINE; do
        echo "Checking NS --> $LINE"
        dig "$LINE" ns | grep ".*.melbourne.uk.net" && echo "^^^^ MATCH ^^^^"
        dig "$LINE" soa | grep ".*.melbourne.uk.net" && echo "^^^^ MATCH ^^^^"
        sleep .25
done < domains
