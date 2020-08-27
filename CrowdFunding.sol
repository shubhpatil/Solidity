pragma solidity >=0.4.22 <0.6.0;

contract CrowdFunding {

    // Project Structure
    struct Project {
        address creatorAddress;
        string projectTitle;
        uint goalAmount;
        uint deadLine;
    }

    // Mapping Project with creator address
    mapping(address => mapping(uint => Project)) project;
    // Projects Array
    Project[] public projects;
    // Event When new project is created
    event ProjectStarted(
        address creatorAddress,
        string projectTitle,
        uint goalAmount,
        uint deadLine
    );
    // Total Projects created
    uint totalProject;

    function newProject(string calldata _title, uint _amount, uint _deadline) external {
        uint deadLine = now + (_deadline * 1 days);
        project[msg.sender][totalProject] = Project(msg.sender, _title, _amount, deadLine);
        projects.push(Project({
            creatorAddress: msg.sender, 
            projectTitle: _title, 
            goalAmount: _amount, 
            deadLine: deadLine
        }));
        emit ProjectStarted(msg.sender, _title, _amount, deadLine);
        totalProject++;
    }

}