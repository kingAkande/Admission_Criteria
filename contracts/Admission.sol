// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract AdmissionCriteria{


        struct Biodatas {

            string  Name;
            uint256    Age;
            uint256    EntryScore;

        }


         Biodatas[] public list;


function setlist(string memory _name ,uint256 _age, uint256 _score)external {

        list.push(Biodatas(_name, _age, _score ));

}

function All_intake()external view returns (Biodatas[] memory){
    
return  list;

}

function checkAgeEligibility( uint256 index) external view   {

            if( list[index].Age <= 5){

                revert("not up to age");
}

}

function entryScoreCheck(uint256 index)external view {

            require( list[index].EntryScore <= 50, "not up to average" );


} 

 bool public ailment;

    function ailmentcheck() public view {
        
        assert(ailment == false);
    }


}
