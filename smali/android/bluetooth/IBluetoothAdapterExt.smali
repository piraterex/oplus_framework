.class public interface abstract Landroid/bluetooth/IBluetoothAdapterExt;
.super Ljava/lang/Object;
.source "IBluetoothAdapterExt.java"


# virtual methods
.method public blacklist hookDisable(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookEnable(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBluetoothScoAvailableOffCall()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMode(IILjava/lang/String;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 45
    return-void
.end method

.method public blacklist setSpeakerphoneOn(ZILjava/lang/String;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public blacklist startBluetoothSco(ILjava/lang/String;)V
    .locals 0
    .param p1, "callingPid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 39
    return-void
.end method

.method public blacklist stopBluetoothSco(ILjava/lang/String;)V
    .locals 0
    .param p1, "callingPid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 42
    return-void
.end method
