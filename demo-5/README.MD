## This demo reviews how to view AWS source IP Blocks via terraform <br>

- The ```securitygroup.tf``` file configures the region(s) to query and names the securitygroup that will be created with the info
    - in this case ```from_us```
- Output is as follows (quering us-east-1 and us-west-1):

```
Inbound rules (50)

Manage tags
Edit inbound rules

1

Filter security group rules


Name
Security group rule ID
IP version
Type
Protocol
Port range
Source
Description

Name
Security group rule ID
IP version
Type
Protocol
Port range
Source
Description

–
sgr-0734353eb460ad91a	IPv4	HTTPS	TCP	443	142.4.160.136/29	–

–
sgr-0f36104878c8b3aea	IPv4	HTTPS	TCP	443	142.4.160.176/29	–

–
sgr-0ea15e8bcc6fefaf9	IPv4	HTTPS	TCP	443	15.181.112.0/22	–

–
sgr-049883b4ceeae8c7a	IPv4	HTTPS	TCP	443	15.220.120.0/21	–

–
sgr-0718bea8512a33e6e	IPv4	HTTPS	TCP	443	142.4.161.8/29	–

–
sgr-0fafcee4e2ed90098	IPv4	HTTPS	TCP	443	142.4.160.0/29	–

–
sgr-025c1cc6f8a12dcba	IPv4	HTTPS	TCP	443	15.181.247.0/24	–

–
sgr-03b61291a44cbaabb	IPv4	HTTPS	TCP	443	15.181.232.0/21	–

–
sgr-07ebce6d8a3fbdd68	IPv4	HTTPS	TCP	443	15.177.81.0/24	–

–
sgr-087cd4c28f060ffa8	IPv4	HTTPS	TCP	443	15.177.64.0/23	–

–
sgr-091e633468edcf340	IPv4	HTTPS	TCP	443	15.181.224.0/21	–

–
sgr-0349e5e9937aa2c2a	IPv4	HTTPS	TCP	443	142.4.160.8/29	–

–
sgr-02bdc600ec59eab18	IPv4	HTTPS	TCP	443	100.24.0.0/13	–

–
sgr-07e26a59568e0aeaf	IPv4	HTTPS	TCP	443	142.4.160.184/29	–

–
sgr-056e543e850ffa9e2	IPv4	HTTPS	TCP	443	15.181.242.0/24	–

–
sgr-0b41bee3db379f881	IPv4	HTTPS	TCP	443	13.57.0.0/16	–

–
sgr-0bdfd584a71e8ebb5	IPv4	HTTPS	TCP	443	15.181.246.0/24	–

–
sgr-089f4c804cb6bfb41	IPv4	HTTPS	TCP	443	142.4.160.112/29	–

–
sgr-088c0b06457c7bfef	IPv4	HTTPS	TCP	443	142.4.160.72/29	–

–
sgr-03ad5bf6f61f2b4c4	IPv4	HTTPS	TCP	443	15.181.244.0/24	–

–
sgr-065fe03d81379ea36	IPv4	HTTPS	TCP	443	15.181.254.0/24	–

–
sgr-05510eb780e95aa66	IPv4	HTTPS	TCP	443	142.4.160.200/29	–

–
sgr-040feaba2a8d77eb7	IPv4	HTTPS	TCP	443	15.181.160.0/20	–

–
sgr-061df4ce37d779605	IPv4	HTTPS	TCP	443	15.181.80.0/20	–

–
sgr-0639d9832d83c33dd	IPv4	HTTPS	TCP	443	142.4.160.80/29	–

–
sgr-08bf077c200fa7374	IPv4	HTTPS	TCP	443	107.20.0.0/14	–

–
sgr-095c3410da70b3764	IPv4	HTTPS	TCP	443	142.4.160.48/29	–

–
sgr-081a5db5bd9135a0b	IPv4	HTTPS	TCP	443	136.18.50.0/23	–

–
sgr-0b223c7a267432341	IPv4	HTTPS	TCP	443	13.56.0.0/16	–

–
sgr-0bf46ffd3a2992069	IPv4	HTTPS	TCP	443	15.181.120.0/21	–

–
sgr-0adc1047bf4d3c0fe	IPv4	HTTPS	TCP	443	142.4.160.120/29	–

–
sgr-088b3afd9b7efa4d1	IPv4	HTTPS	TCP	443	142.4.160.24/29	–

–
sgr-0136e4ac8076b75de	IPv4	HTTPS	TCP	443	142.4.161.24/29	–

–
sgr-07cb90754aacde417	IPv4	HTTPS	TCP	443	13.52.0.0/16	–

–
sgr-01659245a4c0a767c	IPv4	HTTPS	TCP	443	142.4.161.32/29	–

–
sgr-0b2ef040950773856	IPv4	HTTPS	TCP	443	15.181.48.0/20	–

–
sgr-089bafe5c18ae0d56	IPv4	HTTPS	TCP	443	15.181.40.0/21	–

–
sgr-0162b715525c7702b	IPv4	HTTPS	TCP	443	15.181.241.0/24	–

–
sgr-0ac6e4dd1e062f316	IPv4	HTTPS	TCP	443	142.4.160.40/29	–

–
sgr-06e27a58c55bbdb47	IPv4	HTTPS	TCP	443	15.181.243.0/24	–

–
sgr-07ae22342651171c9	IPv4	HTTPS	TCP	443	142.4.160.88/29	–

–
sgr-0a469a5d81a88d33d	IPv4	HTTPS	TCP	443	142.4.160.128/29	–

–
sgr-0ec120fbf787d6f8f	IPv4	HTTPS	TCP	443	15.181.176.0/20	–

–
sgr-03dfcaeae4614f430	IPv4	HTTPS	TCP	443	15.181.249.0/24	–

–
sgr-07ff3545deeeb29a9	IPv4	HTTPS	TCP	443	15.193.6.0/24	–

–
sgr-0eca0362187ede29c	IPv4	HTTPS	TCP	443	15.181.144.0/20	–

–
sgr-0575e4f42ce3e2e5a	IPv4	HTTPS	TCP	443	15.181.240.0/24	–

–
sgr-0f1ba8e358008b30e	IPv4	HTTPS	TCP	443	15.181.96.0/20	–

–
sgr-0c1c120f30d23a377	IPv4	HTTPS	TCP	443	15.181.192.0/19	–

–
sgr-018ae371cd24a8f3f	IPv4	HTTPS	TCP	443	15.181.32.0/21
```
