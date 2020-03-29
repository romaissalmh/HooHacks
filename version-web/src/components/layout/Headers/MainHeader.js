import React from 'react'
import image from '../../../assets/images/bg5.jpg'
import photoprofil from '../../../assets/images/ryan.jpg'
import {Link} from 'react-router-dom'
class MainHeader extends React.Component {

  
    render() {
        return (
            
            <div  style={{
                backgroundColor:"#ffcb09 " 
          //  backgroundImage:"url(" + require("../../../assets/images/bg5.jpg") + ")" 
            // ,opacity:'0.3'
           // ,height:'1400px'
          }}>
         
                <br/> <br/>
                    <div className="input-group" style={{position:"absolute",top:"10px" ,}} >
                        <div className="input-group-append" >
                            <button  style={{borderColor:"transparent", color: "white"}} className="btn btn-outline dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Logged </button>
                            <div className="dropdown-menu">
                                <Link to='/' className="dropdown-item" href="#">Sign out</Link>
                               
                            </div>
                        </div>
                    </div>
                    
                    <center>
                       
                        <img alt="..." src={photoprofil} width="130px" height="130px" style={{borderRadius:"180px"}} />
                        <br/><br/>
                        <h3 style={{ color: "white", fontSize: "30px" ,fontFamily:"Calibri"}}>AYLAN </h3>
                        <p style={{ color: "white", fontSize: "20px" }}>PRINTING HOUSE </p>
                        
                        <br/>
                      
                        <div  style={{marginRight:"70px"}}>
                            
                            
                            <ul >
                                <li style={{ display: "inline", margin: "25px", color: "white", fontSize: "35px" }} > {this.props.total} </li>
                                <li style={{ display: "inline", margin: "175px", color: "white", fontSize: "35px" }} >{this.props.charity}   </li>
                                <li style={{ display: "inline", color: "white", fontSize: "35px"}} >{this.props.month}  </li>
                            </ul>
                            <ul >
                                <li style={{ display: "inline" , margin: "35px", color: "white", fontSize: "25px",fontFamily:"Calibri"}} >Donations  </li>
                                <li style={{ display: "inline", margin: "125px", color: "white", fontSize: "25px",fontFamily:"Calibri" }} >Charities</li>
                                <li style={{ display: "inline", color: "white", fontSize: "25px",fontFamily:"Calibri" }} >Charities </li>
                            </ul>
                            </div>
                    </center>
                    <br/>
                 </div>
           
        )
    }
}
export default MainHeader
