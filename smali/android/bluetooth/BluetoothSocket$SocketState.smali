.class final enum Landroid/bluetooth/BluetoothSocket$SocketState;
.super Ljava/lang/Enum;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SocketState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothSocket$SocketState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum blacklist CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum blacklist CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum blacklist INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum blacklist LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 157
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 158
    new-instance v1, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 159
    new-instance v3, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v5, "LISTENING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 160
    new-instance v5, Landroid/bluetooth/BluetoothSocket$SocketState;

    const-string v7, "CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 156
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/bluetooth/BluetoothSocket$SocketState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/bluetooth/BluetoothSocket$SocketState;->$VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket$SocketState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 156
    const-class v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothSocket$SocketState;
    .locals 1

    .line 156
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->$VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothSocket$SocketState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothSocket$SocketState;

    return-object v0
.end method
