# Download the library from twilio.com/docs/libraries
from twilio.rest import TwilioRestClient
from twilio import twiml

# Get these credentials from http://twilio.com/user/account
account_sid = "AC566da319c49345fe4fbbbea81ada1de0"
auth_token = "741080b04bcb6c2471cf9439d939abce"

client = TwilioRestClient(account_sid, auth_token)

nums = ["+18562174432", "+16099027537","+19085287844", "+16107616189", "+17326681916", "+17324850325"]

for i in range(0,3): 
	# Make the call
	lcall = client.calls.create(to=nums[i],
				from_="+14159686840",
				url="http://twimlets.com/conference?Name=foo")


# resources = client.calls.list()

