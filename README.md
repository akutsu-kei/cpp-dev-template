# C++ Template Project README  
  
This is a template for a C++ project configured with CMake, Docker, and Visual Studio Code dev containers. It includes configurations for building and running the application and tests inside a Docker container.  
  
## Getting Started  
  
### Cloning the Repository  
  
```bash  
git clone https://github.com/akutsu-kei/cpp-dev-template.git
cd cpp-dev-template
```

### Running the Application

```bash  
docker compose up run --build
# run-1  | Hello, World!
# run-1  | 1 + 2 = 3
# run-1  | OpenCV version: 4.5.4
```


### Running the tests

```bash  
docker compose up test --build
# test-1  | [==========] Running 1 test from 1 test suite.
# test-1  | [----------] Global test environment set-up.
# test-1  | [----------] 1 test from AddTest
# test-1  | [ RUN      ] AddTest.add
# test-1  | [       OK ] AddTest.add (0 ms)
# test-1  | [----------] 1 test from AddTest (0 ms total)
# test-1  | 
# test-1  | [----------] Global test environment tear-down
# test-1  | [==========] 1 test from 1 test suite ran. (0 ms total)
# test-1  | [  PASSED  ] 1 test.
```
