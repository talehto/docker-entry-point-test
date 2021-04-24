
# Purpose

This example demonstrates how to add functionality to the child docker image before calling `ENTRYPOINT` script of parent(base) image. This can be used e.g. if another container has to be up and running before starting `parent` container. This wait can be done e.g. replacing `sleep` call with `wait-for` script in this example.

# Execution of the example

**Compiling parent:**

C:\work\docker\entry-point-test\parent> *docker build -t parent:0.1 .*

**Compiling child:**
C:\work\docker\entry-point-test\child> *docker build -t child:0.1 .*

**Execution:**
C:\work\docker\entry-point-test\child> *docker container run -it --entrypoint "./entrypoint-child.sh" child:0.1 5 everybody !*

**Result:**
```
child before sleep
real    0m 5.00s
user    0m 0.00s
sys     0m 0.00s
child after sleep
Hello World everybody !

C:\work\docker\entry-point-test\child>
```
