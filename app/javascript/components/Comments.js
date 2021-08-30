import React from 'react'

const Comments = (props) => {
    
const { item, comments } = props;
return (
    <div>
        <h1>{item.name}</h1>
    </div>
);
}

export default Comments;