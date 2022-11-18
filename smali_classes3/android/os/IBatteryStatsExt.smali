.class public interface abstract Landroid/os/IBatteryStatsExt;
.super Ljava/lang/Object;
.source "IBatteryStatsExt.java"


# virtual methods
.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist haveNetworkMode(Ljava/io/PrintWriter;ZJJ)Z
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "haveModes"    # Z
    .param p3, "initMode"    # J
    .param p5, "modMode"    # J

    .line 38
    return p2
.end method

.method public blacklist noteConnectivityChangedLocked(ILjava/lang/String;III)[I
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "phoneDataConnectionType"    # I
    .param p4, "modStepMode"    # I
    .param p5, "curStepMode"    # I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v1, 0x1

    aput p5, v0, v1

    return-object v0
.end method

.method public blacklist notePhoneDataConnectionStateLocked(IZIIII)[I
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "bin"    # I
    .param p4, "historyCurStates"    # I
    .param p5, "modStepMode"    # I
    .param p6, "curStepMode"    # I

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p5, v0, v1

    const/4 v1, 0x1

    aput p6, v0, v1

    return-object v0
.end method

.method public blacklist registerRomUpdate()V
    .locals 0

    .line 34
    return-void
.end method

.method public blacklist reportDailyProto()V
    .locals 0

    .line 42
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    return-void
.end method

.method public blacklist setInBatteryStatsImplInstance(Ljava/lang/Object;)V
    .locals 0
    .param p1, "impl"    # Ljava/lang/Object;

    .line 55
    return-void
.end method
