import React from 'react';

const NewStore = () => {
    return (
        <div>
            <p>Form here</p>
            <form action="/stores" method="post">
                <p>Name</p>
                <input name='store[name]'/>
                <p>Manager</p>
                <input name='store[manager]'/>
                <p>Number of Employees</p>
                <input name='store[num_employees]'/>
                <button type="submit">add</button>
            </form>
            <a href="/">Back</a>
        </div>
    );
};

export default NewStore;