# Week 6&7 — Deploying Containers/Load Balancer+Custom Domain

Tasks completed for this week/s were:

- setting up health check for the backend + frontend

![healthcheck](https://user-images.githubusercontent.com/125153369/235268959-28011bd7-174b-42b5-864f-056236225ef4.PNG)

![ecshealth](https://user-images.githubusercontent.com/125153369/235268557-0d86894f-15a3-48ff-a763-2edbe63b0b6d.PNG)

- CloudWatch logging group for Fargate/ECS Cluster

![logroup](https://user-images.githubusercontent.com/125153369/235269137-fee59f1c-b172-4086-9c0a-6c4b251d6f91.PNG)

- Create ECR repo and ECS cluster for:

  - Python (Base image)
  - Flask
  - React 

![ecr](https://user-images.githubusercontent.com/125153369/235269608-e484e6d0-649e-4469-abc3-991c11221ffd.PNG)

![createecscluster](https://user-images.githubusercontent.com/125153369/235267865-0281d6a0-5f4a-4c2e-a16e-45691e858e2a.PNG)

- Create and store secrets in Parameter Store

![secrets](https://user-images.githubusercontent.com/125153369/235268274-ef78f28c-2b40-415b-baa0-f82480b1d004.PNG)


- Create IAM Roles (Task, Execution) for xray, cloudwatch, etc.)

![createrole2](https://user-images.githubusercontent.com/125153369/235267880-f48da6dd-d721-40b1-9fa2-5289557af2b4.PNG)

![createrole](https://user-images.githubusercontent.com/125153369/235267888-78a48841-bac5-4410-9eb1-7e714df2114b.PNG)

- Create Task Definition file for backend, frontend
 
![frontendtaskdef](https://user-images.githubusercontent.com/125153369/235271377-fa45cf74-7f11-4857-a8f8-bfd86374618c.PNG)

- Setup Sessions Manager CLI

![sessionmanagerinstalled](https://user-images.githubusercontent.com/125153369/235267952-1ff8f017-a0ce-4e9b-9f70-35d723003909.PNG)

- Create Application Load Balancer

![applicationloadbalancer](https://user-images.githubusercontent.com/125153369/235271273-5b4d97f4-cb78-4268-a39c-9dc9ef20fa53.PNG)


- Creating a hosted zone in Route 53; add nameservers to custom dns

![hostedzone](https://user-images.githubusercontent.com/125153369/235271326-46f98e3b-aa2b-4c49-bbe4-75f196f10ee4.PNG)



Challenges Faced:

 - Health check failing (frontend and backend)
 - Unhealthy containers/target groups
 - Could not ping custom domain (had to allow ICMP in SG rule)
 
