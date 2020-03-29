import React, { Component } from 'react'

import image from '../../assets/images/firstimagedonate.jpg'
import { Link } from 'react-router-dom'

export class FormDon extends Component {
    constructor(props) {
        super(props);
        this.state = {
          email: '',
          password: '',
          donation :'',
          amount :'',
          date:'',
          isLogged: 'false'
        }
        this.handleChangeEmail = this.handleChangeEmail.bind(this);
        this.handleChangePassword = this.handleChangePassword.bind(this);
        this.handleChangeDonation = this.handleChangeDonation.bind(this);
        this.handleChangeAmount = this.handleChangeAmount.bind(this);
        this.handleChangeDate = this.handleChangeDate.bind(this);

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
      handleChangeDonation(event) {
        this.setState({ donation: event.target.value })
      }
      handleChangeAmount(event) {
        this.setState({ amount: event.target.value })
      }
      handleChangeDate(event) {
        this.setState({ date: event.target.value })
      }
    
    render() {
        return (
            <div style={{ maxWidth: "1400px", maxHeight: "600px" }}>
        <div className="jumbotron" style={{ backgroundColor: "#ffcb09" }} >
          <center >
            <div class="card mb-3" style={{ maxWidth: "1250px" }}>
              <div class="row no-gutters">
              <div className="col-md-6" style={{ backgroundColor: "#ffffff", borderBottomWidth: "10px", borderTopWidth: "10px", borderBottomColor: "#4949E7", borderTopColor: "#4949E7 " }}>
                <img src={image} style={{ width: "640px", height: "564px", margin: "" }} alt="..." />
                </div>
                <div class="col-md-6">
                  <br /><br />
                  <div class="card-body">
                    <h3 class="card-title">DONATING IS CARING</h3>
                    <p class="card-text"><small class="text-muted">GIVING HOPE TO THE HOMELESS</small></p>
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
                      </div> <br />
                      <div >
                        <input style={{ borderColor: "transparent", borderBottomColor: "grey", width: "300px", borderWidth: "1px" }} placeholder="What to donate ? food, books ..." type="text" name="donation" value={this.state.donation}
                          onChange={this.handleChangeDonation}
                        ></input>
                      </div> <br />
                      <div >
                        <input style={{ borderColor: "transparent", borderBottomColor: "grey", width: "300px", borderWidth: "1px" }} placeholder="Amount" type="password" name="text" value={this.state.amount}
                          onChange={this.handleChangeAmount}
                        ></input>
                      </div>  <br />
                      <div >
                        <input style={{ borderColor: "transparent", borderBottomColor: "grey", width: "300px", borderWidth: "1px" }} placeholder="Date And Hour" type="date" name="date" value={this.state.date}
                          onChange={this.handleChangeDate}
                        ></input>
                      </div>
                      <br /><br />

                      <div style={{}}>
                      <Link href="#"   className="btn btn-primary btn-outline btn-sm" style={{height: "50px", width: "300px", fontSize:"19px"}}>Donate </Link>
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

export default FormDon
