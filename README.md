# test-kitchen-test

This cookbook keeps track of all the different CI services I'm aware of and
which ones support using Docker and the kitchen-docker driver within a build.

Currently, that subset of hosted CI services seems to be only CircleCI and, as
of August, 2015, TravisCI. Working example Test Kitchen and CI configs are
provided.

***TravisCI***

[![TravisCI Status](https://img.shields.io/travis/RoboticCheese/test-kitchen-test-chef.svg)][travis]

Works with both kitchen-docker and kitchen-dokken.

***CircleCI***

[![CircleCI Status](https://img.shields.io/circleci/project/RoboticCheese/test-kitchen-test-chef.svg)][circleci]

Works only with kitchen-docker, not kitchen-dokken:

```
>>>>>>     Failed to complete #converge action: [Unsupported: Exec is not
>>>>>>     supported by the lxc driver
```

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

***SemaphoreCI***

```
An error occurred trying to connect: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json: read unix @->/var/run/docker.sock: read: connection reset by peer
```

[travis]: https://travis-ci.org/RoboticCheese/test-kitchen-test-chef
[circleci]: https://circleci.com/gh/RoboticCheese/test-kitchen-test-chef
[wercker]: https://app.wercker.com/project/bykey/7b1fd8e453150fe10609376d44e7442b
[shippable]: https://app.shippable.com/subscriptions/5507a81d5ab6cc1352a13510
