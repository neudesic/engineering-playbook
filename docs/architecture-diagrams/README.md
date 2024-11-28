# Architecture Diagrams

Architecture diagrams are an important part of our engineering playbook as they are a highly effective communication tool to ensure our consultants and client stakeholders are aligned on application, system, and infrastructure design. Architecture diagrams allow us to validate internally amongst ourselves, and externally with clients, that our technical design thinking addresses the needs and requirements of the business problem.

Architecture diagrams come in different flavors, and below are examples from real projects that can be used as reference material.

## Conceptual Architecture

Conceptual architecture diagrams are meant to be a bit high-level, with just enough detail to show the components involved and their relationships, but without getting too far in the weeds. Conceptual architecture diagrams are beneficial for validating ideas and getting initial alignment on a solution.

### AI Landing Zones

This is the conceptual architecture diagram for the AI landing zones. There are actually 3 AI landing zone solutions, and while their overall designs are different, conceptually they are the same, which is what the diagram below demonstates.

![image](https://github.com/neudesic/engineering-playbook/assets/1056417/232bafa1-2f85-4630-8b00-324ecb0c84ba)

### AI Landing Zone for APIM-App Gateway

One of the 3 solutions for the AI landing zones is the APIM-App Gateway version, which is the most complex of the 3 solutiuons. But as you can see below, from a conceptual point of view it's fairly easy to follow: clients call an API on the APIM, which forwards calls to the App Gateway, which load balances between the OpenAI instances to handle the calls for the requested AI model, but where the OpenAI instances can only be accessed through their respective Private Endpoints.

![image](https://github.com/neudesic/engineering-playbook/assets/1056417/e6cfe8a3-f043-48ee-a44d-a4cfb869ad75)

## Logical Architecture

Logical architecture diagrams take conceptual diagrams to the next level and provide a lot more detail about the design. Where conceptual diagrams are used to get initial alignment on a proposed solution, logical diagrams are used to get alignment and communicate more of the implementation details of the solution.

### AI Landing Zone for APIM-App Gateway

As you can see below, the logical architecture for the APIM-App Gateway AI landing zone has a lot more details compared to its conceptual diagram.

![image](https://github.com/neudesic/engineering-playbook/assets/1056417/c2ef855c-93e6-41b1-8f5e-5eddeb702953)

### Chat@Neudesic

This is the logical architecture for Chat@Neudesic, where the purpose of the diagram is to show all of the moving parts involved to make the application work, both inside and outside the application itself, and how they are related and fit together.

![image](https://github.com/neudesic/engineering-playbook/assets/1056417/563f3e3f-9e86-47c8-bb11-318b993349a8)
