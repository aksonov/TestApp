'use strict';

var React = require('react-native');

var {
    View, requireNativeComponent,
    PropTypes,
    Dimensions,
    } = React;


class Path extends React.Component {
    setNativeProps(nativeProps) {
        this.refs.child.setNativeProps(nativeProps);
    }

    render() {
        console.log("SVGPATH!");
        return <SVGPath ref="child" {...this.props} style={[{backgroundColor:'transparent'}, this.props.style]}  />;
    }
}
Path.propTypes = {
    filename: PropTypes.string,
    d: PropTypes.string,
    scale: PropTypes.number

};
var SVGPath = requireNativeComponent('SVGPathView', Path);


module.exports = Path;
