# PMD docker image (abzcoding/pmd)

Docker image for [PMD](https://pmd.github.io/), an extensible cross-language static code analyzer.

This image can be used to run PMD (static code analysis) and CPD (copy-paste detection).

## Getting started

### Prerequisites

In order to run this container you'll need docker installed.

 - [Windows](https://docs.docker.com/windows/started)
 - [OS X](https://docs.docker.com/mac/started/)
 - [Linux](https://docs.docker.com/linux/started/)

### Usage

ex: Java analysis with custom rulesets

`docker run -v $PWD:/src abzcoding/pmd pmd -language java -dir . -rulesets ./my-rulesets.xml`

ex: Apex analysis with builtin rulesets

`docker run -v $PWD:/src abzcoding/pmd pmd -language apex -dir . -rulesets rulesets/apex/rulset.xml`

#### Volumes

  - `/src/` - default working directory

## Contributing

The Github repository is located at [abzcoding/docker-pmd](https://github.com/abzcoding/docker-pmd)

## Versioning

We use PMD version numbers to version the images.

## License
Credit to [doy](https://github.com/rody/docker-pmd-image) that made this possible
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
