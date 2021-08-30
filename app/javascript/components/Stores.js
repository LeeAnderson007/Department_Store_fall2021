import React from 'react'

const Stores = (props) => {
    return (
        <div>
            <h1> Stores</h1>
            <p>{1 + 1}</p>
            <p>{new Date().toGMTString()}</p>
            {props.stores.map((store) => {
                return (
                <div key={store.id}>
                    <p>{store.name}</p>
                    {/* <p>{store.employee}</p> */}
                </div>
                );
             })}
        </div>
    );
};

export default Stores;