# react-native-safe-area-insets
[![npm version](http://img.shields.io/npm/v/@delightfulstudio/react-native-safe-area-insets.svg?style=flat-square)](https://npmjs.org/package/@delightfulstudio/react-native-safe-area-insets "View this project on npm")
[![npm version](http://img.shields.io/npm/dw/@delightfulstudio/react-native-safe-area-insets.svg?style=flat-square)](https://npmjs.org/package/@delightfulstudio/react-native-safe-area-insets "View this project on npm")

A simple react native module that allows to query [safeAreaInsets](https://developer.apple.com/documentation/uikit/uiview/2891103-safeareainsets) of a current root view

# Installation

`yarn add @delightfulstudio/react-native-safe-area-insets`

# Manual linking
1. Open your project in XCode 
1. Add `./node_modules/@delightfulstudio/react-native-safe-area-insets/ios/RNSafeAreaInsets.xcodeproj` to `Libraries` in your project
1. Select root of your projects
1. Switch to `General` tab
1. Scroll down to `Linked Frameworks and Libraries` section
1. Click button `+`
1. Add `libRNSafeAreaInsets.a` (if it's not present, build the project and try again)

## Usage

```

import { currentInsets } from "@delightfulstudio/react-native-safe-area-insets";

import React, { Component } from "react";
import { View } from "react-native";


class MyRootComponent extends Component {
    state = {};

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
            <View style={ [ this.state.style ] }>
                ...
            </View>
        );
    }
}

```

