while true; do { \
  echo -ne "HTTP/1.0 200 OK\r\n \
   Content-Length: \
   $(wc -c <PingSweep.txt)\r\n\r\n"; \
  cat PingSweep.txt; } | nc -l -p 8080 ; \
done
