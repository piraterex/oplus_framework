.class public abstract Landroid/bluetooth/BluetoothLeCallControl$Callback;
.super Ljava/lang/Object;
.source "BluetoothLeCallControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeCallControl.Callback"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onAcceptCall(ILjava/util/UUID;)V
.end method

.method public blacklist onHoldCall(ILjava/util/UUID;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .line 256
    const-string v0, "BluetoothLeCallControl.Callback"

    const-string/jumbo v1, "onHoldCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public blacklist onJoinCalls(ILjava/util/List;)V
    .locals 2
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p2, "callIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    const-string v0, "BluetoothLeCallControl.Callback"

    const-string/jumbo v1, "onJoinCalls: unimplemented, however CAPABILITY_JOIN_CALLS is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public abstract blacklist onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V
.end method

.method public abstract blacklist onTerminateCall(ILjava/util/UUID;)V
.end method

.method public blacklist onUnholdCall(ILjava/util/UUID;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .line 271
    const-string v0, "BluetoothLeCallControl.Callback"

    const-string/jumbo v1, "onUnholdCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method
