class Board extends React.Component {
    constructor(props) {
        super(props);
        this.renderRows = this.renderRows.bind(this);
        this.renderTiles = this.renderTiles.bind(this);
    }

    render() {
        const board = this.props.board;
        const that = this;
        return (
            <div id="board">
                {this.renderRows()}
            </div>
        );
    }