# Sockperf Container Image

This repository is for creating the docker image for doing network performance testing using sockperf. 

## How to use it? 

You have to run a server and a client for this purpose. 

### Running a server

```docker run -p image_name bash run.sh s```


### Running a client

```docker run image_name bash run.sh c ip_of_server```

### Results

You can view the results of the run in client like below. 
<pre>
sockperf: Warmup stage (sending a few dummy messages)...
sockperf: Starting test...
sockperf: Test end (interrupted by timer)
sockperf: Test ended
sockperf: [Total Run] RunTime=5.000 sec; Warm up time=400 msec; SentMessages=50005; ReceivedMessages=500
sockperf: ========= Printing statistics for Server No: 0
sockperf: Test end (interrupted by signal 2)
sockperf: [Valid Duration] RunTime=4.520 sec; SentMessages=45201; ReceivedMessages=453
sockperf: ====> avg-rtt=116.460 (std-dev=178.973)
sockperf: # dropped messages = 0; # duplicated messages = 0; # out-of-order messages = 0
sockperf: Summary: Round trip is 116.460 usec
sockperf: Total 453 observations; each percentile contains 4.53 observations
sockperf: ---> <MAX> observation = 3103.589
sockperf: ---> percentile 99.999 = 3103.589
sockperf: ---> percentile 99.990 = 3103.589
sockperf: ---> percentile 99.900 = 3103.589
sockperf: ---> percentile 99.000 =  410.328
sockperf: ---> percentile 90.000 =  194.947
sockperf: ---> percentile 75.000 =  123.583
sockperf: ---> percentile 50.000 =   75.848
sockperf: ---> percentile 25.000 =   63.534
sockperf: ---> <MIN> observation =   49.811
</pre>

## NOTE

This is very basic test we can include more test if you want to contribute. 


When contributing to this repository, please first discuss the change you wish to make via issue, or any other method with the owners of this repository before making a change.

Please note we have a code of conduct, please follow it in all your interactions with the project.

## Pull Request Process

1. Ensure any install or build dependencies are removed before the end of the layer when doing a
   build.
2. Update the README.md with details of changes to the interface, this includes new environment
   variables, exposed ports, useful file locations and container parameters.
4. You may merge the Pull Request in once you have the sign-off of two other developers, or if you
   do not have permission to do that, you may request the second reviewer to merge it for you.

# Contribution Guide

Visit [sockperf-container](https://github.com/chowmean/sockperf-container) if you want to create an issue of contribute. 

## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to making participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, gender identity and expression, level of experience,
nationality, personal appearance, race, religion, or sexual identity and
orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.


