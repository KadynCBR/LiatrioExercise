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