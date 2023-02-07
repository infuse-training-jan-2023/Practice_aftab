const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = ({name,designation, company,hobbies}) => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    result = name+"is a "+designation+" at "+company+". "+"He likes"
    all_hobbies = hobbies.map((hobby,index) => {return  index==hobbies.length-1?" and "+hobby :" "+hobby})
    combined_result = result+all_hobbies
    console.log(combined_result)
}

printUserProfile(user)

