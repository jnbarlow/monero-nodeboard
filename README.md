# monero-nodeboard
A docker project that combines a monero-node and the monero-dashboard project.

## What is it?
This allows you to run a full monero node (with dashboard) on a server away from your main
system, letting you centralize the blockchain files somewhere else.

## How do I connect my wallet to the node?
To connected your wallet, you need to add the IP of this container as a remote node in your monero client.
As of 18.3.1:
* open the client in advanced mode
* go to `Settings->Node`
* select `Remote Node` (go ahead and stop the local daemon)
* click the + on `Add Remote Node`
* add ip and port of where you're running the container. 
![289388537-fe53c2e3-8a8f-4578-9c1e-f0eadf82a067](https://github.com/jnbarlow/monero-nodeboard/assets/1322371/9c5bcb1a-26c7-4272-8f60-e2deb4a87ff2)
![289388561-cf6a7895-4521-4b9d-8e83-50d230ea4218](https://github.com/jnbarlow/monero-nodeboard/assets/1322371/bdc88c75-e0ca-43e9-9ccf-e1fca0834d7c)
![289388566-8936cfb7-02af-4927-9ddc-016854beac22](https://github.com/jnbarlow/monero-nodeboard/assets/1322371/06827db1-8716-477a-8312-45ab0d14f95c)
