# Test Kitchen Test Cookbook README

This repo compares different hosted CI services and their suitability for performing Chef cookbook testing with Test Kitchen and friends.

| Name            | Badge                                   | Dokken? | macOS? | Windows? | Free parallel jobs? |
|-----------------|-----------------------------------------|---------|--------|----------|---------------------|
| Azure Pipelines | [![Build Status][azure_badge]][azure]   | Yes     |        |          |                  10 |
| CircleCI        | [![Build Status][circle_badge]][circle] | Yes     | Yes    | No       |                   4 |
| TravisCI        | [![Build Status][travis_badge]][travis] | Yes     |        |          |                   5 |

***SemaphoreCI***

Works with kitchen-docker after you flip the platform switch to one that has
Docker support.

[![Semaphore CI Status](https://semaphoreci.com/api/v1/roboticcheese/test-kitchen-test-chef/branches/master/badge.svg)](https://semaphoreci.com/roboticcheese/test-kitchen-test-chef)

***Shippable***

[![Shippable Status](https://img.shields.io/shippable/5507a81d5ab6cc1352a13510.svg)][shippable]

Kitchen-docker can create containers, but gets stuck repeatedly logging:

```
       Waiting for SSH service on localhost:32771, retrying in 3 seconds
```

***Wercker***

[![Wercker Status](https://img.shields.io/wercker/ci/RoboticCheese/test-kitchen-test-chef.svg)][wercker]

```
Guest command failed with exit code -1: mkdir -p "/pipeline"
```

***Codeship***

Does not allow sudo access:

https://documentation.codeship.com/faq/root-level-access/


[azure]: https://dev.azure.com/roboticcheese/test-kitchen-test-chef/_build/latest?definitionId=1&branchName=master
[azure_badge]: https://dev.azure.com/roboticcheese/test-kitchen-test-chef/_apis/build/status/RoboticCheese.test-kitchen-test-chef?branchName=master
[circle]: https://circleci.com/gh/RoboticCheese/test-kitchen-test-chef
[circle_badge]: https://circleci.com/gh/RoboticCheese/test-kitchen-test-chef/tree/master.svg?style=svg
[travis]: https://travis-ci.org/RoboticCheese/test-kitchen-test-chef
[travis_badge]: https://api.travis-ci.org/RoboticCheese/test-kitchen-test-chef.svg?branch=master

[wercker]: https://app.wercker.com/project/bykey/7b1fd8e453150fe10609376d44e7442b
[shippable]: https://app.shippable.com/subscriptions/5507a81d5ab6cc1352a13510

## Maintainers

- Jonathan Hartman <j@hartman.io>
