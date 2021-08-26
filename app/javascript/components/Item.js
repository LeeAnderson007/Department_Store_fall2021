import React from 'react';

const Item = (props) => {
    return (
        <div>
            <p>Item</p>
            <p>{`${JSON.stringify(props.item)}`}</p>
        </div>
    );
};
export default Item;