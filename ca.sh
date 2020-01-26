openssl genrsa -des3 -out CA.key 2048
openssl req -x509 -new -nodes -key CA.key -sha256 -days 1825 -out CA.pem
openssl genrsa -out toq.key 2048
openssl req -new -key toq.key -out toq.csr

cat << EOF > local.ext
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = localhost
DNS.2 = local
EOF

openssl x509 -req -in toq.csr -CA CA.pem -CAkey CA.key -CAcreateserial \
-out local.crt -days 1825 -sha256 -extfile local.ext
