# LoginScript

Use this script to login to any instance prod or preprod for all services/projects to be configured.
example(SMS, Voice, Phoneid, IPgeo, Geo)

parameter 1 service-name (sms , voice , geocode , ipgeocode, phoneid)

parameter 2 ip-address

parameter 3 environment (prod, preprod)

parameter 4 region (west, east)


*Note* lets say for geocode and ipgeocode region parameteer is not required, since the are single region

*Note* bastion is harcoded, it can be defined in variable as well 

Example usage

./login.csh service-name ip-address prod/preprod east/west



./login.csh phoneid ip-address prod west

./login.csh phoneid ip-address preprod west


./login.csh sms ip-address prod west

./login.csh sms ip-address preprod west


./login.csh voice ip-address prod west

./login.csh voice ip-address preprod west


./login.csh geeocode ip-address prod west

./login.csh geeocode ip-address preprod west


./login.csh ipgeocode ip-address prod

./login.csh ipgeocode ip-address preprod




