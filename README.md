
![Project Screenshot](src/main/webapp/images/readme.png) <br>
[Link project: To do list](https://todolist.huynq.site/Todolist)
# 📖To do list



## 🚀Overview
The To-Do List App is a simple and intuitive task management application designed to help users organize their daily activities efficiently. The application allows users to create, manage, and track their tasks with an easy-to-use interface.

##  🔧Tech Stack

1. Frontend: JSP, HTML/CSS
2. Backend: Servlet
4. Deployment: AWS Lightsail
5. IAC: Terraform
6. Build tool: Maven
7. CICD TOOL: Jenkins 
8. Container: Docker
9. Webserver: Nginx
10. cerbot: SSL 

## Step-1: Jenkins Server Setup in Linux VM #
1) Create AWS Lightsail instace using Terraform
2) Enable 8080 Port Number in Security Group Inbound Rules
3) Connect to VM using MobaXterm
4) Install Java

```
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
```

3) Install Jenkins
```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```
4) Start Jenkins

```
sudo systemctl enable jenkins
sudo systemctl start jenkins
```

5) Verify Jenkins

```
sudo systemctl status jenkins
```
	
6) Access jenkins server in browser using VM public ip

```
http://public-ip:8080/

```

7) Copy jenkins admin pwd

```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
	   
8) Create Admin Account & Install Required Plugins in Jenkins

## Step-2 : Configure Maven as Global Tool in Jenkins ##

1) Manage Jenkins -> Tools -> Maven Installation -> Add maven <br/>

## Step-3 : Setup Docker in Jenkins ##
```
curl -fsSL get.docker.com | /bin/bash
sudo usermod -aG docker jenkins
sudo usermod -aG docker ubuntu
sudo systemctl restart jenkins
sudo docker version
```

# Step - 4 : Create Jenkins Job #

- **Stage-1 : Clone Git Repo** <br/> 

- **Stage-2 : Maven Build** <br/>

- **Stage-3 : Create Docker Image** <br/>


- **Stage-4 : Create Docker Container** <br/>
	
# Step - 5 : Trigger Jenkins Job #

# Step - 6 : Enable host port in security group inbound rules #

# Step - 7 : Access Application in Browser #

URL : http://public-ip:port/
	

# Step - 8 : Nginx webserver #

# Step - 9 : Redirect Domain to IP #

# Step - 9 : SSL certificate #
*If you using Cloudfare to host your domain, please turn off proxy or allow full (strict) by 
- In the SSL/TLS > Overview tab, use Full (strict)
- In the SSL/TLS > Edge Certificates tab, enable Always use HTTPS <br>
to avoid web site redireting too many times. By using this, you can let the Cloudfare to always use HTTPS when contacting your origin server

## 📧 Contact
📩 Email: huynq00.hn@example.com  
💼 LinkedIn: [HuyNQ](www.linkedin.com/in/huyquang46/)  
