.class public interface abstract Lcom/oplus/vrr/IOPlusRefreshRateManager;
.super Ljava/lang/Object;
.source "IOPlusRefreshRateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;,
        Lcom/oplus/vrr/IOPlusRefreshRateManager$VRRPolicy;
    }
.end annotation


# virtual methods
.method public abstract whitelist findDisplayModeIdByPolicy(III)I
.end method

.method public abstract whitelist getList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getModeType(I)I
.end method

.method public abstract whitelist getPreferredFrameRate(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method public abstract whitelist getRefreshRatePolicy(F)I
.end method

.method public abstract whitelist hasFlickerRisk()Z
.end method

.method public abstract whitelist isGameAccelerationScene()Z
.end method

.method public abstract whitelist isWhiteListGame(Ljava/lang/String;)Z
.end method

.method public abstract whitelist notifyBrightnessChange(F)V
.end method

.method public abstract whitelist notifyNitsChange(F)V
.end method

.method public abstract whitelist requestRefreshRate(Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;)V
.end method

.method public abstract whitelist screenStateChange(I)V
.end method

.method public abstract whitelist screenStateChangeWarning(I)V
.end method

.method public abstract whitelist setExternalRefreshRateStatus(I)V
.end method

.method public abstract whitelist setFrameRate(FLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract whitelist setLowFreqVideo(Z)V
.end method

.method public abstract whitelist setRefreshRatePolicy(IFIZ)V
.end method

.method public abstract whitelist setTgpaGameData(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist setVsyncConfig(IFFLjava/lang/String;)Z
.end method

.method public abstract whitelist updateAccelerationPkgName(Ljava/lang/String;II)V
.end method

.method public abstract whitelist updateDisplayModes(J)V
.end method
