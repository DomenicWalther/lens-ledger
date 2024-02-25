import "./App.css";
import OrderTable from "./components/orderTable/orderTable";

function App() {

    return (
        <>
            <OrderTable />
            <div className="w-screen h-screen flex justify-center items-center">
                <button className="px-6 py-4 bg-gray-300">Neuen Kunden anlegen</button>
            </div>
        </>
    );
}

export default App;
