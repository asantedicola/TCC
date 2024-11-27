import {Outlet} from "react-router-dom";
import ErrorPage from "../pages/error";

const Main = ({hasError}) => {
   return <main>{hasError ? <ErrorPage/> : <Outlet/>}</main>
}

export default Main;
