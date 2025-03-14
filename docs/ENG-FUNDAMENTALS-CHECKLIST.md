# Engineering Fundamentals Checklist

This checklist helps to ensure that our projects meet our Engineering Fundamentals.

## Agile/Scrum

- [ ] Process Lead (fixed/rotating) runs the daily standup.
- [ ] The agile process is clearly defined within the team.
- [ ] The Dev Lead (+ PO/Others) are responsible for backlog management and refinement.
- [ ] A working agreement is established between team members and customer.

More details on [agile development](agile-development/README.md)

## Work Item Tracking

- [ ] All items are tracked in AzDevOps (or similar).
- [ ] The board is organized (swim lanes, feature tags, technology tags).
- [ ] Conditions of Acceptance are clearly defined for the development team.

More details on [backlog management](agile-development/advanced-topics/backlog-management/README.md)

## Retrospectives

- [ ] Retrospectives are conducted each week/at the end of each sprint.
- [ ] The team identifies 1-3 proposed experiments to try each week/sprint to improve the process.
- [ ] Experiments have owners and are added to project backlog.
- [ ] The team conducts longer retrospective for Milestones and project completion.

More details on [retrospectives](agile-development/core-expectations/README.md)

## Source Control

- [ ] The default target branch is locked.
- [ ] Merges are done through Pull Requests.
- [ ] Pull Requests reference related work items.
- [ ] Commit history is consistent and commit messages are informative (what, why).
- [ ] Consistent branch naming conventions.
- [ ] Clear documentation of repository structure.
- [ ] Secrets are not part of the commit history or made public. (see [Credential scanning](continuous-integration/dev-sec-ops/secret-management/credential_scanning.md))
- [ ] Public repositories follow the [OSS guidelines](source-control/README.md#creating-a-new-repository), see `Required files in default branch for public repositories`.

More details on [source control](source-control/README.md)

## Continuous Integration/Continuous Delivery (CI/CD)

- [ ] Project runs CI with automated build and test on each Pull Request.
- [ ] Project uses CD to manage deployments to a replica environment before Pull Requests are merged.
- [ ] Main branch is always shippable.

More details on [continuous integration](continuous-integration/README.md) and [continuous delivery](continuous-delivery/README.md)

## Design Reviews

- [ ] Process for conducting design reviews is included in the [Working Agreement](agile-development/advanced-topics/team-agreements/working-agreements.md).
- [ ] Design reviews for each major component of the solution are carried out and documented, including alternatives.
- [ ] Stories and/or Pull Requests are linked to the design document.
- [ ] Each user story includes a task for design review by default, which is assigned or removed during sprint planning.
- [ ] Project advisors are invited to design reviews or asked to give feedback to the design decisions captured in documentation.
- [ ] Discover all the reviews that the customer's processes require and plan for them.
- [ ] Clear non-functional requirements captured (see [Non-Functional Requirements Guidance](design/design-patterns/non-functional-requirements-capture-guide.md))
- [ ] Risks and opportunities captured (see [Risk/Opportunity Management](agile-development/advanced-topics/backlog-management/risk-management.md))

More details on [design reviews](design/design-reviews/README.md)

## Code Reviews

- [ ] There is a clear agreement in the team as to function of code reviews.
- [ ] The team has a code review checklist or established process.
- [ ] A minimum number of reviewers (usually 2) for a Pull Request merge is enforced by policy.
- [ ] Linters/Code Analyzers, unit tests and successful builds for Pull Request merges are set up.
- [ ] There is a process to enforce a quick review turnaround.

More details on [code reviews](code-reviews/README.md)

## Testing

- [ ] Unit tests cover the majority of all components (>90% if possible).
- [ ] Integration tests run to test the solution end to end.

More details on [automated testing](automated-testing/README.md)

## Security

- [ ] Access is only granted on an as-needed basis
- [ ] Secrets are stored in secured locations and not checked in to code
- [ ] Data is encrypted in transit (and if necessary at rest) and passwords are hashed
- [ ] Is the system split into logical segments with separation of concerns? This helps limiting security vulnerabilities.

More details on [security](security/README.md)

## Observability

- [ ] Significant business and functional events are tracked and related metrics collected.
- [ ] Application faults and errors are logged.
- [ ] Health of the system is monitored.
- [ ] The client and server side observability data can be differentiated.
- [ ] Logging configuration can be modified without code changes (eg: verbose mode).
- [ ] [Incoming tracing context](observability/correlation-id.md) is propagated to allow for production issue debugging purposes.
- [ ] GDPR compliance is ensured regarding PII (Personally Identifiable Information).

More details on [observability](observability/README.md)

## Developer Experience (DevEx)

Developers on the team can:

- [ ] Build/Compile source to verify it is free of syntax errors and compiles.
- [ ] Execute all automated tests (unit, e2e, etc).
- [ ] Start/Launch end-to-end to simulate execution in a deployed environment.
- [ ] Attach a debugger to started solution or running automated tests, set breakpoints, step through code, and inspect variables.
- [ ] Automatically install dependencies by pressing F5 (or equivalent) in their IDE.
- [ ] Use local dev configuration values (i.e. .env, appsettings.development.json).

More details on [developer experience](developer-experience/README.md)

## Engineering Feedback

- [ ] The team submits feedback on business and technical blockers that prevent project success
- [ ] Suggestions for improvements are incorporated in the solution
- [ ] Feedback is detailed and repeatable

More details on [engineering feedback](engineering-feedback/README.md)
