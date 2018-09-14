import { NativeModules } from "react-native";

const RNSafeAreaInsets = NativeModules.RNSafeAreaInsets;

export const currentInsets = async () => RNSafeAreaInsets.currentInsets();
