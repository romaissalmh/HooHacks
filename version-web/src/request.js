
const GOOGLE_MAP_API_URL = "https://maps.googleapis.com/maps/api/geocode/json";
const axios = require("axios");
const REACT_APP_GOOGLE_APIKEY="AIzaSyCEtSeUAIBMQc1kbhMnNBNrQ0tCoVBx3-Q"

 

  let res = ''
  export const getLocation = (lat,lng) => {
    axios.get(
      `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${lat},${lng}&radius=150000&keyword=charity&key=${REACT_APP_GOOGLE_APIKEY}
  
      ` )    
      .then((response) => {
          res= response.data.results
          console.log("request")
          console.log(res);
          })  
          return res 
  }
  
  

      
        
