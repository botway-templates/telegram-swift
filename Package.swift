// swift-tools-version:5.6.2
import PackageDescription

let package = Package(
    name: "{{.BotName}}",
    products: [
        .executable(
            name: "{{.BotName}}",
            targets: ["{{.BotName}}"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/zmeyc/telegram-bot-swift.git", from: "2.1.2"),
    ],
    targets: [
        .executableTarget(
            name: "{{.BotName}}",
            dependencies: [
                .product(name: "TelegramBotSDK", package: "telegram-bot-swift"),
            ]),
    ]
)
