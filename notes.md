# Liatrio Interview exercise notes

---
General notes

- HTTP API Endpoint
  - Node JS 
  - Express
  - returns minified json object name + timestamp.
- CI/CD
  - github actions
    - builds applications docker image
    - verifies functionality through specific actions
    - pushes image to **dockerhub**
- Containerize
  - Docker
  - Doesn't specify any other requirements. Ubuntu or debian would make it easier.
- deploy to cloud
  - My choice of cloud
    - have GCP credits right now so why not.
- Deployment workflow
  - Auto deploy when changes are made to main branch.
  - Add field to json output (version?) to verify deployed.

---
Demo 

- Discussion points
  - What you did
  - What you learned
  - What struggles
  - Additional ideas + items
- Demo visuals?
  - Live demonstration itself
  - "Show how its done" not just "end result"
  - Slide deck? Itenerary? Excalidraw flow?
  - Time management
    - Introduce 2
    - Demo 8
    - Questions 5



---

## Github
https://github.com/KadynCBR/LiatrioExercise

---
1. Dockerfile
  - 
2. Node + express Application




--- 
Struggles:
- No introspection into github actions (no ssh in without tmate or otherwise.)
  - used other run steps to debug out.
- steps not passing?
  1. NPM install wasn't in docker container,  <wa> 
  2. steps running too quickly, running -d and then immediately moving to next step (curl or tests) would fail. adding a sleep helped
  3. final step just throws error, could use previous step which was complete. 
- Deployment tradeoffs
  1. Google cloud run (but you need the image to be on google container repository to play nice. I could add another workflow step that uploads to google container repository as well, but this feels kind of bad.)
     - Essentially needing to duplicate 
     - needing to conform to their IAAS
  2. Regular Google Cloud Compute VM, ssh in, and perform docker stop, docker pull docker run. (Ol' reliable but I wonder if there's a better way, with all this IAAS flying around.)
     - Feels kind of ick too, essentially just a bash script running commands, prone to error due to its "static" ness
     - simple and verbose
  3. Ansible deployment
     - 