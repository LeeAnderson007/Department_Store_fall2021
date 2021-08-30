const Items = (props) => {
    const renderItems = () => {
    return props.item.map((item)=> {
        return (
            <div>
                <h1>{Item.name}</h1>
                <a href= {`/stores/${props.department.id}/items/${item.id}`}>View Item</a>
                <a href= {`/stores/${props.department.id}/items/${item.id}`} data-method="delete">Delete Item</a>
            </div>
        )
    })
}
return (
    <div>
        <h1>{`${props.department.name} items:`}</h1>
        <a href={`/stores/${props.store.id}/items/new`}>Create New Item</a>
        {renderItems}
    </div>
)
}
export default Items;