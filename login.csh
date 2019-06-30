bastion=""

if [ "$1" == "ipgeocode" ] || [ "$1" == "geocode" ]; then
		echo "$1 service selected"
		if [ "$3" == "prod" ]; then
			echo "prod selected"
				bastion="54.148.156.11"
		elif [ "$3" == "preprod" ]; then
				echo "preprod selected"
				bastion="52.11.41.33"
		fi
fi


if [ "$1" == "sms" ]; then
		echo "$1 service selected"
		if [ "$3" == "prod" ]; then
				echo "prod selected"
				if [ "$4" == "east" ]; then
					bastion="bastion-us-east-2.prod.uc.a.intuit.com"
				elif [ "$4" == "west" ]; then
					bastion="bastion-us-west-2.prod.uc.a.intuit.com"	
				fi	
		elif [ "$3" == "preprod" ]; then
				echo "preprod selected"
				if [ "$4" == "east" ];then
					bastion="bastion-us-east-2.preprod.uc.a.intuit.com"
				elif [ "$4" == "west" ]; then
					bastion="bastion-us-west-2.preprod.uc.a.intuit.com"	
				fi	
		fi
fi


if [ "$1" == "voice" ]; then
		echo "$1 service selected"
		if [ "$3" == "prod" ]; then
				if [ "$4" == "east" ]; then
					bastion="18.219.211.226"
				elif [ "$4" == "west" ]; then
					bastion="54.189.248.64"	
				fi	
		elif [ "$3" == "preprod" ]; then
				if [ "$4" == "east" ];then
					bastion="52.14.83.197"
				elif [ "$4" == "west" ]; then
					bastion="34.214.76.128"	
				fi	
		fi
fi



if [ "$1" == "phoneid" ]; then
		echo "$1 service selected"
		if [ "$3" == "prod" ]; then
				if [ "$4" == "east" ]; then
					bastion="bastion-us-east-2.prod.mobileservices.a.intuit.com"
				elif [ "$4" == "west" ]; then
					bastion="bastion-us-west-2.prod.mobileservices.a.intuit.com"	
				fi	
		elif [ "$3" == "preprod" ]; then
				if [ "$4" == "east" ];then
					bastion="bastion-us-east-2.preprod.mobileservices.a.intuit.com"
				elif [ "$4" == "west" ]; then
					bastion="bastion-us-west-2.preprod.mobileservices.a.intuit.com"	
				fi	
		fi
fi


echo "$bastion"
ssh "ec2-user@$2" -o "proxycommand ssh -W %h:%p ec2-user@$bastion"
	
