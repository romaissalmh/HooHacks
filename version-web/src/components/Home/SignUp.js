import React from 'react'
import image from '../../assets/images/firstimagedonate.jpg'
import './Screens.css'
import {Link} from 'react-router-dom'



export default class SignUp extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            Societyname: '',
            Societyemail: '',
            Domaine: '',
            Type: '',
            TypeDon: '',
            password: '',
            confirmedPassword: '',
            isLogged: 'false'
        }
        this.handleChangeSocietyname = this.handleChangeSocietyname.bind(this);
        this.handleChangePassword = this.handleChangePassword.bind(this);
        this.handleChangeSocietyemail = this.handleChangeSocietyemail.bind(this);
        this.handleChangDomaine = this.handleChangeDomaine.bind(this);
        this.handleChangeType = this.handleChangeType.bind(this);
        this.handleChangeTypeDon = this.handleChangeTypeDon.bind(this);
        this.handleChangeConfirmedPassword = this.handleChangeConfirmedPassword.bind(this);
    }
    SeConnecter = () => {
        console.log(this.state.Societyemail)
        this.setState({ isLogged: 'true' })
        // return <Redirect to='/dashboard' />
         //history.push('/Profile')


    }
    Authentifier = () => {

        // history.push('/SignIn')        
    }
    handleChangeSocietyemail(event) {
        this.setState({ Societyemail: event.target.value })
    }
    handleChangePassword(event) {
        this.setState({ password: event.target.value })
    }
    handleChangeSocietyname(event) {
        this.setState({ Societyname: event.target.value })
    }
    handleChangeType(event) {
        this.setState({ Type: event.target.value })
    }
    handleChangeTypeDon(event) {
        this.setState({ TypeDon: event.target.value })
    }
    handleChangeConfirmedPassword(event) {
        this.setState({ confirmedPassword: event.target.value })
    }
    handleChangeDomaine(event) {
        this.setState({ Domaine: event.target.value })
    }


    render() {
        return (
            <div style={{ maxWidth: "1400px", maxHeight: "600px" }}>

                <div className="jumbotron" style={{ backgroundColor: "#ffcb09" }} >
                    <center >
                        <div className="card mb-3" style={{maxWidth: "1250px" , margin: "" }}>
                            <div className="row no-gutters">
                                <div className="col-md-6">
                                    <br />
                                    <div className="card-body">
                                        <h3 className="card-title">Welcome Back</h3>
                                        <p className="card-text"><small className="text-muted">To sign up please fill in the above</small></p>
                                        <br />
                                        <form>
                                            <div  >
                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "35px", width: "210px", borderWidth: "1px" }} type="text" name="Society name" placeholder="Society name" value={this.state.Societyname}
                                                    onChange={this.handleChangeSocietyname}
                                                ></input>
                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "", width: "210px", borderWidth: "1px" }} type="text" name="Society email" placeholder="Society email" value={this.state.Societyname}
                                                    onChange={this.handleChangeSocietyemail}
                                                ></input>
                                            </div>
                                            <br />
                                            <div  >

                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "35px", width: "210px", borderWidth: "1px" }} type="text" name="Domaine" placeholder="Domain: Comerce,Health ..." value={this.state.Domaine}
                                                    onChange={this.handleChangeDomaine}
                                                ></input>

                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "", width: "210px", borderWidth: "1px" }} placeholder="Donate: Food,books ..." type="text" name="Type Don" value={this.state.TypeDon}
                                                    onChange={this.handleChangeTypeDon}
                                                ></input>



                                            </div>

                                            <br />
                                            <div >
                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "", width: "460px", borderWidth: "1px" }} type="text" name="Type" placeholder="Type: Market,Restaurant,library ..." value={this.state.Type}
                                                    onChange={this.handleChangeType}
                                                ></input>
                                            </div>

                                            <br />
                                            <div >
                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "", width: "460px", borderWidth: "1px" }} placeholder="Password" type="password" name="Password" value={this.state.password}
                                                    onChange={this.handleChangePassword}
                                                ></input>
                                            </div>
                                            <br />
                                            <div >
                                                <input style={{ borderColor: "transparent", borderBottomColor: "grey", marginRight: "", width: "460px", borderWidth: "1px" }} placeholder="Confirm password" type="password" name="Confirm password" value={this.state.confirmedPassword}
                                                    onChange={this.handleChangeConfirmedPassword}
                                                ></input>
                                            </div>
                                            <br />
                                            <br />
                                            <div style={{}}>
                                            <Link href="#" to='/Profile' className="btn btn-primary btn-outline btn-sm" onClick={this.SeConnecter} style={{height: "50px", width: "300px", fontSize:"19px"}}>Sign Up </Link>

                                            </div>

                                              </form>   
                                    </div>
                                </div>
                                <div className="col-md-6" style={{ backgroundColor: "#ffffff",borderBottomWidth:"10px" ,borderTopWidth:"10px" ,borderBottomColor:"#4949E7",borderTopColor:"#4949E7 "}}>
                                    <img src={image} style={{ width: "640px", height: "550px", margin: "" }} alt="..." />
                                </div>

                            </div>
                        </div>
                    </center>
                </div>
            </div>
        )
    }
}