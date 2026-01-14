Deployment models of the cloud
- Public
    - Example: Website
    - Use cloud services owned and operated by a third party cloud service provider
    - Delivcered over the internet
    - Also called a 'multi-tenant cloud'
- Private
     - Also called a 'single-tenant cloud'
     - Cloud infrastructure that is dedicated to a private company/org
     - Could be owned by a company
     - Adv
        - Security for sensitive apps/data
        - Special solutions/configurations (meet specific business needs)
        - Not beholdent to the provider (can fix if goes down)
            - Have an in-house specialist team to deal with issues that may arise
    - Disadv
        - Cost (we have to go all the way)
            - Hardware and amintenance and operations
        - Multiple costings along the way (inflexibility within provider margins/thresholds)
- Inflexibility
            - Managing traffic daily
            - Managing growth
- Hybrid
    - When we use cloud running remotely and on-prem
    - Example: a database running on-prem, and a web app running in the cloud
    - Control over sensitive assets like a database by keeping it on-prem
    - However, we can still have athe flexinility and benefits of a public cloud solution
- Multi-cloud
    - Example: If we had our app + db running on MS AND AWS
    - What would be an advantage of this?
        - Different cloud providers may have a better offering for that solution
        - Less reliant on one provider (allows switching if we did want to go all-in-one)
        - If MS fails, your app + db will keep running in AWS (often required in sectors like the financial sector)
Types of Cloud services: IaaS, PaaS, SaaS
IaaS - Infrstructure as a Service
- Provide building blocks for IT
- Networking, computer, storage
- High level of flexibility
- (Easy parallel to draw with the on-prem)
PaaS - Platform as a Service
- Removes the need for the Org to mamage underlying infrastructure
- Ready made environment to write your code
- Customer/Org, brings the code and the data
- Focus deployment and mgmt of applications rather than infra and networking
SaaS - Software as a Service
- Completed product that is run and managed by the service provider
- Example
    - MS 365
    - Cloud storage (Dropbox, Google drive etc)
    - Salesforcde
    - Slack
    - GitHub
    - JIRA
Bonus - FaaS - Functions as a Service
- Write a function that is stored on the cloud, trigger attached that will run that function
- Pay when the function runs, nothing else to manage
- Example
    - AWS Lambda, Azure Functions, Google Cloud Function
    Popular for Data
        - Process uploads
        - Run/schedule jobs (e.g. regular/reoccuring)
        - ETL/ELT pipeline trigger
        - Sending notifications and alerts
        - API responses/requests
Adv and Disadv of cloud computing
Advantages
- Scalability
    - Scale up/down based on demand
Accessibility and Mobility
    - You can access resources from anywhere, providing you have internet connection and login details
Physical Space
    - Larger companies don't have to dedicate floor space to their in-house solution
Availaibility (Latency)
    - Multi region
Cost
    - Cost to entry: small startup costs, whihc allow smaller companies to utilise cloud computing and its benefits (don't need to buy/maintain expenseive hardware)
    - General: pay for what you use
Disaster Recovery
    - Configure how we want our 'backup plan' to be to be implemented (e.g. across multiple regions and data centres) -> no downtime
Innovation
    - Cost to use will come down when the provider is innovating
    - Easy to rey/experiment/utilise new technologies (e.g. AI, ML)
Updates and Maintenance
Security (handled by experts and is the latest the greatest)
Fast global deployment
Disadvantages
Security and privacy risks
    - Provider are secure, but we share responsibility
    - Also considerate of our cloud credentials
High operational cost
(Unpredictable abd spiralling costs)
    - Requires careful budgeting and planning and monitoring
    - If not, BIG bills
    - Visibility
Vendor Lock in
    - Difficult to move away from a provider
    - You don't own the infrastrucre if you decide to move away
    - Have to trust that your provider is respecting the chinese wall
Compliance Issue
    - Where is our data going
    - How is it being used
    - How does that conflict with company policy
Environmental Concerns
    - Data centres require enormous resouces
        - Only getting bigger, which requires MORE
    - NOTE - cost of cooling, water and aircon (Can this heat be repurposed?)
Reputational Damage (second hand)
    - Google is hacked -> I utilise GCP -> what is the knock on effect to my rep and image
Latency
    - Could be an issue if we have global usage, but not global solution
Cloud Providers
- Azure (MS), AWS (Amazon), GCP (Google)
    - Biggest due to scale and expertise
Other options
- IBM cloud
- Oracle cloud
- Digital Ocean cloud
- Alibaba cloud
AWS
- Longest established
- Largest network of data centres across the world
- Lot's of good documentation and massive community
    - Huge pool of certified professionals
- The most amount of overall services
Azure
- Integrration into the MS ecosystem
    - Active Directory for accounts
    - SaaS products like Office 365 and version of JIRA, Powrr BI
    - Strong relationships with enterprise levels businesses (offer complex hybrid solutions)
- Azure DevOps
GCP
- A little cheaper for most services
- Commitment to open source
- Particular expertise around certain services like Kubernetes and containers (Google Kubernetes engine)
- Data focussed
    - Best in class options for things like Big Data, ML and AI
    - Flexible APIs
What do we usually pay for when using cloud
- Computer power and RAM
- Storage space
- Bandwith (e.g. writing to a db)
- Web hosting
-----------------------------------------------------------------
EC2
- What is EC2
- Deployment of an EC2 instance
    - Machine Image
    - Security Group
        - Port?
- How to log in to your EC2 instance?
VM
- A software based computer running inside a physical computer
- We can run code etc on it, just like normal
- Has it's own
    - OS
    - CPU and RAM
    - Storage
    - Networking
Why?
- Isolation: we can run it the same every time
- Easy to create/destroy/iterate
    - Easily test software (in isolation)
    - trial and error, development etc
- Flexibility - we can run different OS on same machine (e.g. Linux on a Windows host)
| Feature | Local VM | EC2 |
|----------|:-------------:|------:|
| Hardware | Have to buy and maintain | AWS provides for you |
| Scaling | Manual and slow | Automatic and fast |
| Cost | Pay upfront (CapEx) | Pay-as-you-go (OpEx) |
| Availability | If hardware fails, VM is down | High availability (HA) and redundancy options |
What can we do with EC2
- Host applications (web servers APIs, backend services like dbs)
- Env for development/testing and experimenting
- Batch, analytics 