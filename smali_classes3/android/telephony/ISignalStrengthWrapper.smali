.class public interface abstract Landroid/telephony/ISignalStrengthWrapper;
.super Ljava/lang/Object;
.source "ISignalStrengthWrapper.java"


# virtual methods
.method public whitelist copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .line 42
    return-void
.end method

.method public whitelist getLteRsrp()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLteRssnr()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNrRsrp()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNrSinr()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOemLevel0()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOemLevel1()I
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFake()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setFake(Z)V
    .locals 0
    .param p1, "isFake"    # Z

    .line 35
    return-void
.end method

.method public whitelist setOemLevel(II)V
    .locals 0
    .param p1, "oemLevel0"    # I
    .param p2, "oemLevel1"    # I

    .line 32
    return-void
.end method
