
var names = []
var weights = []
var base_experience = []
var hp = []
var back_ground_image;
var container = document.getElementsByClassName("container")[0]
var search_button = document.getElementsByClassName("search")[0]
var show_all_button = document.getElementsByClassName("show_all")[0]
var load_more_button = document.getElementsByClassName("load_more")[0]






load_more_button.addEventListener("click",()=>{load_more_pokemons(11)})

function load_more_pokemons(number){
  console.log(number)
  var count = number ;
  Array.from(container.children).forEach((child)=>{
    if(count!=0 && child.style.display!="block"){
      child.style.display="block"
      count=count-1
    }
    else{
      child.style.display='none'
    }

   })
}
var drop_down = document.getElementById('drop_down');
drop_down.addEventListener('change', function() {
    var elements = container.children
    var array =Array.from(elements)
    var result
    if(drop_down.value=="weight"){
      result = array.sort(function(a, b){return a.childNodes[2].innerText - b.childNodes[2].innerText})
    }
    else{
      result = array.sort(function(a, b){return a.childNodes[3].innerText - b.childNodes[3].innerText})
    }
    container.replaceChildren(...result)
}, false);



search_button.addEventListener("click",get_searched_pokemon)
show_all_button.addEventListener("click",get_all_pokemons)

function get_searched_pokemon(){
  var query = document.getElementById("search_input").value
  if(query=="")alert("please enter pokemon's name")
  else{
     // console.log(container.children.length)
  Array.from(container.children).forEach((child)=>{
    if(child.innerHTML.includes(query)){child.style.display='flex'}
    else{ child.style.display='none'}
    load_more_button.style.display="none"
   })

  }
}
function get_all_pokemons(){
  load_more_button.style.display="block"
  Array.from(container.children).forEach((child)=>{
    child.style.display='flex'
   })

}

fetch("https://pokeapi.co/api/v2/pokemon")
  .then(res => {
    console.log(res.status)
    return res.json()
  })
  .then(data => {
    console.log(data);
    data.results.forEach(pokemon => {
      var div = document.createElement("div")
      var elements = create_elements()
      add_elements_to_div(div, elements, pokemon)
      document.getElementsByClassName("container")[0].appendChild(div)
      set_hover_effect(div,elements,pokemon.url)

    })
    load_more_pokemons(10)
  })

function set_hover_effect(div,elements,url){
  fetch(url)
    .then(res => {
      console.log(res.status)
      return res.json()
    }).then((data)=>{
      div.onmouseover = ()=>{elements[0].src = data["sprites"]["back_default"]}
      div.onmouseout=()=>{elements[0].src = data["sprites"]["front_default"]}
      div.getElementsByTagName("button")[0].onclick=()=>{change_iframe_content(data)}
})
}



function change_iframe_content(data){
  console.log('hello')
        document.getElementById("frame").srcdoc = `
        <p>species : ${data["species"]["name"]}</p>
        <p>more stats : ${data["stats"][1]["base_stat"]}</p>
        <p>form : ${data["forms"][0]["name"]}</p>
        <p>names of the moves  : ${data["moves"].map((o)=>o.move.name)}</p>`
}



function create_elements() {
  var elements = []
  var icon = document.createElement("img")
  elements.push(icon)
  for (let i = 0; i <= 4; i++) {
    var element = document.createElement("p")
    elements.push(element)
  }
  return elements
}
function add_elements_to_div(div, elements, pokemon) {

  var base_experience = 0;
  elements.forEach((element,index)=>{
    console.log(index)
    switch (index) {
      case 0:
      //  setting the fron image and returnin the backgorund image
        set_element_data(element, pokemon.url, "sprites")
        break;
      case 1:
        element.innerHTML = pokemon.name
        break;
      case 2:
        base_experience = set_element_data(element, pokemon.url, "base_experience")
        break;
      case 3:
        set_element_data(element, pokemon.url, "weight")
        break;
      case 4:
        set_element_data(element, pokemon.url, "stats")
        break;

    }
    div.appendChild(element)
  })
    div.classList.add("card")
    var button = document.createElement("button")
    button.classList.add("btn")
    button.innerText = "view more"
    div.appendChild(button)
    console.log(base_experience)
    div.style.order = base_experience
}


function set_element_data(element, url, key) {

  fetch(url)
    .then(res => {
      console.log(res.status)
      return res.json()
    }).then((url_data) => {
      back_ground_image = url_data["sprites"]["back_default"]
      switch(key){
        case "sprites":
          element.src=url_data[key]["front_default"]

          break;
        case "stats":
          element.innerText = url_data[key][0]["base_stat"]
          break;
        default :
          element.innerText = url_data[key]
          break;
      }
      if(key=="base_experience"){base_experience = url_data[key]}
      console.log(url_data)
    })
    return 2
}


