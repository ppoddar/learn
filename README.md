# Dev to DevOps

An ultra-simple Node.js application. The source code sits in GitHub, runs as a Docker
container in a VM in Azure cloud triggered by GitHub actions.

```

       -------------                                    ---------------------------------
      |    GitHub   |                                           ---------------
      |             |
      |             |                                               Node.js App
       -------------
                                                                 ---------------


                                                        ---------------------------------

                     -----------------------
                    |                       |
                    |      Mac Laptop       |
                    |                       |
                    |                       |
                     -----------------------




# Build, Depoly, Run

Checkout from Github

     1. git clone https://github.com/ppoddar/learn.git learn


Script modifies relase  number and commits to github. The push will
trigger Github Actions. The github action 
     2. ./release.sh 
     3. open http://localhost/




