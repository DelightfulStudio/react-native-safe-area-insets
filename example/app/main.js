import { currentInsets } from "@delightfulstudio/react-native-safe-area-insets";

import React, { Component } from "react";
import { Platform, StyleSheet, Text, View } from "react-native";

const instructions = Platform.select( {
    ios: "Press Cmd+R to reload,\n" +
    "Cmd+D or shake for dev menu",
    android: "Double tap R on your keyboard to reload,\n" +
    "Shake or press menu button for dev menu",
} );

const styles = StyleSheet.create( {
    container: {
        flex: 1,
        width: "100%",
        height: "100%",
        justifyContent: "center",
        alignItems: "center",
        backgroundColor: "#1fff59",
    },
    welcome: {
        fontSize: 20,
        textAlign: "center",
        margin: 10,
    },
    instructions: {
        textAlign: "center",
        color: "#333333",
        marginBottom: 5,
    },
} );

export default class App extends Component {
    state = {
    };

    async componentWillMount() {
        const insets = await currentInsets();
        this.setState( {
            style: {
                marginLeft: insets.left,
                marginRight: insets.right,
                marginTop: insets.top,
                marginBottom: insets.bottom,
            }
        } );
    }

    render() {
        if ( !this.state.style )
            return null;

        return (
            <View style={ [ styles.container, this.state.style ] }>
                <Text style={ styles.welcome }>
                    Welcome to React Native!
                </Text>
                <Text style={ styles.instructions }>
                    To get started, edit App.js
                </Text>
                <Text style={ styles.instructions }>
                    { instructions }
                </Text>
            </View>
        );
    }
}
