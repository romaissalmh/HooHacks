import {decorate , observable} from 'mobx'

class authoService {
    authoInfo = null ; 
    login = () => {
        this.authoInfo = {
            fullName : 'Romaissa',
            givenName : 'Rome',
            permissions : ['admin']

        }

    };
    logout = () => {
        this.authoInfo = null ; 

    };

}

decorate(authoService , {
    "authoInfo":observable
})

const instance = new authoService(); 

export default instance ; 