import React, { Component } from 'react'
import image from '../../assets/images/charity.jpg'

import "../../assets/css/animate.css"
import "../../assets/css/icomoon.css"
import "../../assets/css/bootstrap.css"
import "../../assets/css/magnific-popup.css"
import "../../assets/css/owl.carousel.min.css"
import "../../assets/css/owl.theme.default.min.css"
import "../../assets/css/style.css"
import { Link } from 'react-router-dom'



class CharityCard extends Component {
  
   
   
    render() {
        
        const charity = this.props.charity ;

        return (
            <div style={{marginLeft:""}} className="col-md-3 text-center animate-box" > <br/> <br/> <br/> <br/> <br/> <br/> <br/>
            <div className="services">
                <span><img className="" src={charity.icon} width="200px" height="200px" alt=""/></span>
                <h3>{charity.name} </h3>
                <p>{charity.adress} </p>
                <p><Link href="#" to='/Donate' className="btn btn-primary btn-outline btn-sm">Donate <i className="icon-arrow-right"></i></Link></p>
            </div>
        </div>
        )
    }
}





export default CharityCard
