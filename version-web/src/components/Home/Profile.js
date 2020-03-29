import React, { Component } from 'react'
import MainHeader from '../layout/Headers/MainHeader'
import CharityContainer from './CharityContainer'




export class Profile extends Component {
    render() {
        return (
            <div>
                <MainHeader total="20" month="36" charity="55" />
                <CharityContainer />
            </div>
        )
    }
}

export default Profile






























