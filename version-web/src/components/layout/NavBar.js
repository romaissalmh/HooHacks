import React from 'react'
import logo1 from '../../assets/images/logo.svg'
import { Link } from 'react-router-dom'



function NavBar() {
    return (
        <div>
            <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
                <Link to='/' className="navbar-brand" href="#">MoviesInfos</Link>
                <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>

                <div className="collapse navbar-collapse "  id="navbarSupportedContent">
                    <ul className="navbar-nav mr-auto">
                        <li className="nav-item active">
                            <a className="nav-link" href="#">Know more about your best movies <span className="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <div className="form-inline my-2 my-lg-0">
                        <img src={logo1} width="50" height="50" alt="" />
                        <img src={logo1} width="50" height="50" alt="" />

                    </div>
                </div>
            </nav>
        </div>
    )
}

export default NavBar
