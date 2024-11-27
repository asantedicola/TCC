import Footer from './components/footer';
import Header from './components/header';
import Main from './components/main';

function App({hasError}) {
   return (
         <div className="App">
            <header className="App-header">
               <Header/>
            </header>
            <Main hasError={hasError}/>
            <Footer/>
         </div>
   );
}

export default App;
