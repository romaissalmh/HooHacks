import React, { Fragment } from 'react';
import { Provider } from 'react-redux'
import { HashRouter as Router, Route } from 'react-router-dom'
import history from './history';
//HashRouter use it to avoid issues when deploying our app in github browser make isssues

import SignIn from './components/Home/SignIn';
import SignUp from './components/Home/SignUp';
import Profile from './components/Home/Profile';
import FormDon from './components/Home/FormDon'




function App() {


  return (
    <Router >
 


        <Route exact path="/" component={SignIn} />
        <Route path="/SignUp" component={SignUp} />
        <Route path="/Profile" component={Profile }  />
        <Route path="/Donate" component={FormDon }  />
    </Router>

  );
}

export default App;
/*

 <Provider store={store}>
      <Router >
        <div>

          <MainHeader total="20" month="36" charity="55" />

        </div>
      </Router>
    </Provider>
 <Router >
        <Fragment>  <MainHeader total="20" month="36" charity="55" />
          <Example />
          <Route path=' ' component ={} />
        </Fragment>
        <Route exact path="/" component ={Landing} />
          <Route path="/movie/:id" component ={Movie} />
      </Router>*/