import iptools
import sys
inputfile=sys.argv[1]
outputfile=sys.argv[2]
inputcidr=open(inputfile, "r")
outputips=open(outputfile, "a")
for cidr in inputcidr:
	iplist=iptools.IpRange(cidr)
	for ip in iplist:
		print(ip )
		outputips.write(ip +"\n")
inputcidr.close()
outputips.close()
inputcount = len(open(inputfile).readlines())
print("number of CIDR = " + str(inputcount))
outputcount= len(open(outputfile).readlines())
print("number of output IPS = " + str(outputcount))