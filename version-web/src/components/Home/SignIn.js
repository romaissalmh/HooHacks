import React from 'react'
//import logo from '../logo.svg'

//import image from '../fond.gif'
import './Screens.css'
//import history from '../../history';
import image from '../../assets/images/firstimagedonate.jpg'
import { Link } from 'react-router-dom'
import Button from '@material-ui/core/Button';


export default class SignIn extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      isLogged: 'false'
    }
    this.handleChangeEmail = this.handleChangeEmail.bind(this);
    this.handleChangePassword = this.handleChangePassword.bind(this);

  }
  SeConnecter = () => {
 
    this.setState({ isLogged: 'true' })
    //history.push('/Profile')

  }
  CreateAccount = () => {

    //.push('/Profile')

  }
  handleChangeEmail(event) {
    this.setState({ email: event.target.value })
  }
  handleChangePassword(event) {
    this.setState({ password: event.target.value })
  }


  render() {
    return (
      <div style={{ maxWidth: "1400px", maxHeight: "600px" }}>
        <div className="jumbotron" style={{ backgroundColor: "#ffcb09" }} >
          <center >
            <div class="card mb-3" style={{ maxWidth: "1250px" }}>
              <div class="row no-gutters">
              <div className="col-md-6" style={{ backgroundColor: "#ffffff", borderBottomWidth: "10px", borderTopWidth: "10px", borderBottomColor: "#4949E7", borderTopColor: "#4949E7 " }}>
                <img src={image} style={{ width: "640px", height: "550px", margin: "" }} alt="..." />
                </div>
                <div class="col-md-6">
                  <br /><br />
                  <div class="card-body">
                    <h3 class="card-title">Welcome Back</h3>
                    <p class="card-text"><small class="text-muted">To sign in please enter your mail and password</small></p>
                    <br />
                    <form>
                      <div  >
                        <input style={{ borderColor: "transparent", borderBottomColor: "grey", width: "300px", borderWidth: "1px" }} type="text" name="User Name" placeholder="Email" value={this.state.email}
                          onChange={this.handleChangeEmail}
                        ></input>
                      </div> <br />
                      <div >
                        <input style={{ borderColor: "transparent", borderBottomColor: "grey", width: "300px", borderWidth: "1px" }} placeholder="Password" type="password" name="Password" value={this.state.password}
                          onChange={this.handleChangePassword}
                        ></input>
                      </div>
                      <br /><br />

                      <div style={{}}>
                      <Link href="#" to="/Profile"  className="btn btn-primary btn-outline btn-sm" onClick={this.SeConnecter} style={{height: "50px", width: "300px", fontSize:"19px"}}>Sign Up </Link>
                      </div>
                      <div style={{ MarginRight: '50px' }} >
                        <Link to="/SignUp"  onClick={this.CreateAccount} href="">Don't have an account?Sign Up</Link>
                      </div>
                    </form>
                  </div>
                </div>
               
              </div>
            </div>
          </center>
        </div>
      </div>
    )
  }
}