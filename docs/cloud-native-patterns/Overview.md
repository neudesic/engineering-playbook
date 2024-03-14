
# Cloud Native Patterns

[More Detail](https://learn.microsoft.com/en-us/dotnet/architecture/cloud-native/)

## Overview
It's cloud era. There are many engagements we are assisting our coustomers in adopting cloud. Before exploring cloud native patterns in detail, let's first grasp the concept of ***'Cloud Native'***.

> **Cloud Native** refers to an IT system that is designed, developed, and operated in the cloud. It means that the system is created specifically for cloud environments and takes advantage of cloud-native technologies and services. Cloud-native applications are built using microservices architecture, containerization, and orchestration platforms like Kubernetes. These applications are highly scalable, resilient, and can be easily deployed and managed in cloud environments.

To build a successful cloud-native application, it is crucial to have a solid foundation based on the principles of the 12 factor app. These principles provide a set of best practices for developing software that is optimized for cloud environments. Let's explore each of these principles in detail to understand their significance and how they contribute to building scalable, resilient, and easily manageable cloud-native applications.

1. **Codebase**: Keep one codebase per application, tracked in version control. This means that you should have a single codebase for your application, which is managed using a version control system like Git. It helps in maintaining a centralized and organized code repository.

2. **Dependencies**: Explicitly declare and isolate dependencies. When working with external libraries or packages, it's important to explicitly declare them in your project's configuration file (like package.json for npm). This ensures that all the required dependencies are clearly defined and can be easily installed. Isolating dependencies helps in avoiding conflicts and ensures that your application runs smoothly.

3. **Config**: Store configuration in the environment, not in the code. Instead of hardcoding configuration values (like API keys, database credentials) directly in your code, it's recommended to store them in the environment variables. This allows for easy configuration changes without modifying the code, making it more flexible and secure.

4. **Backing Services**: Treat backing services as attached resources. Backing services refer to external resources that your application relies on, such as databases, message queues, or cloud storage. It's important to treat them as attached resources, meaning that they can be easily attached or detached from your application. This allows for better scalability and flexibility.

5. **Build, Release, Run**: Strictly separate build, release, and run stages. This principle emphasizes the separation of concerns between building the application, releasing it to a production environment, and running it. By keeping these stages separate, you can ensure that each step is well-defined and can be independently managed, leading to more reliable and efficient deployments.

6. **Processes**: Execute the app as one or more stateless processes. Stateless processes refer to applications that don't rely on storing session-specific data. Instead, they rely on external data sources or services to maintain state. This approach allows for better scalability and fault tolerance, as processes can be easily scaled up or down without worrying about session data.

7. **Port Binding**: Export services via a port binding mechanism. When your application provides services or APIs, it's important to export them through a port binding mechanism. This allows other applications or services to communicate with your application using a specific port. It enables network communication and ensures that your application can be accessed externally.

8. **Concurrency**: Scale out via the process model. Concurrency refers to the ability of an application to handle multiple tasks simultaneously. By designing your application to scale out using multiple processes, you can handle a higher load and improve performance. This can be achieved through techniques like load balancing or using a process manager.

9. **Disposability**: Maximize robustness with fast startup and graceful shutdown. Disposability refers to the ability of an application to start up quickly and gracefully shut down. This allows for better fault tolerance and resilience. By minimizing startup time and handling shutdown gracefully, you can ensure that your application can recover quickly from failures or be easily replaced.

10. **Dev/Prod Parity**: Keep development, staging, and production environments as similar as possible. It's important to maintain consistency between different environments (development, staging, production) to minimize issues caused by environment-specific differences. By keeping the environments as similar as possible, you can reduce the chances of unexpected behavior when deploying your application to different stages.

11. **Logs**: Treat logs as event streams. Logs are valuable for understanding the behavior of your application and troubleshooting issues. Treating logs as event streams means that you should capture and store logs in a structured and centralized manner. This allows for easier analysis, monitoring, and debugging of your application.

12. **Admin Processes**: Run admin/management tasks as one-off processes. Admin processes refer to tasks or scripts that are used for managing or maintaining your application. It's recommended to run these tasks as separate, one-off processes rather than integrating them into the main application. This helps in keeping the main application focused on its core functionality and allows for better separation of concerns.


Let's now try to understanding ***Cloud Native Patterns***, we will focus those patterns from applications, interaction, data perspective.


1. **Cloud Native Application Patterns**:
- Configuration:
- Scalability: 
- State Management: 

2. **Cloud Native Data Patterns**:

3. **Cloud Native Interactions Patterns**: 
- Asynchronous:  
- Synchronous: 
-  








