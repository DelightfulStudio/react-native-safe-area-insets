declare module '@delightfulstudio/react-native-safe-area-insets' {
    export function currentInsets(): Promise<{
        left: number,
        right: number,
        bottom: number,
        top: number,
    }>;
}
