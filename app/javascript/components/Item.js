import React from 'react';

const Item = (props) => {
    return (
        <div>
            <h1> item</h1>
            {props.stores.map((store) => {
                return (
                <div key={item.id}>
                    <p>{item.name}</p>
                 
                </div>
                );
             })}
        </div>
    );
};

export default Item;