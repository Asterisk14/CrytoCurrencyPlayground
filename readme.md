Steps:
1. ./installDocker.sh
2. ./manageDockerUser.sh
3. For monero
    i. sudo docker build -f dockerfile.monero.build -t WHATEVER_NAME_YOU_PREFER .
    ii. docker run <WHATEVER NAME YOU GAVE AS WHATEVER_NAME_YOU_PREFER> -a cryptonight -o stratum+tcp://<host>:<port> -u MONERO_WALLET_ADDRESS_HERE -p x -t 2
4. For litecoin
   i. sudo docker build -f dockerfile.litecoin.build -t WHATEVER_NAME_YOU_PREFER .
   ii. docker run <WHATEVER NAME YOU GAVE AS WHATEVER_NAME_YOU_PREFER> --url stratum+tcp://<host>:<port> --user <YOUR Public Litecoin address> --pass <as set by your or host>


Side notes:
- Related to monero
- In step, 3.2 -t represents thread, to set optimal thread number , a general advise is 1 thread per 2 MB of cpu cache
- How to find out the cpu cache? 
    - lscpu in nix terminal, you will get details about cpu and cache among other things. e.g. L3 cache: 8192K  i.e. 8 MB , therefore 4 threads for optimal performance 
- If you are mining using a pool with your personal computer, whose capacity is 100H/s i.e 100 hashes per second
- For example if you are using http://www.minexmr.com/ i.e. stratum+tcp://pool.minexmr.com:4444
    - a rough estimate for 100H/s, running 24 hours
        - 24 hours - 0.001 XMR
        - 1 day      - 0.001 XMR
        - 10 days    - 0.01 XMR
        - 100 days   - 0.1 XMR
        - 1000 days  - 1 XMR  i.e. around 3 years you have to run to earn 1 XMR with 100H/s 
- Also with mining pools, there is a threshold limit for withdrawal which you will take months to reach with 100H/s 
- If you want to try with minexmr, you can check your current status using http://www.minexmr.com/ and providing the MONERO_WALLET_ADDRESS (in step 3.2)

*Summary*: Not beneficial for ordinary users, but for fun you can always give it a try. Try solo mining but again it is more or less same, do it for fun :
