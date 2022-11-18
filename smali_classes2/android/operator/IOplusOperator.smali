.class public interface abstract Landroid/operator/IOplusOperator;
.super Ljava/lang/Object;
.source "IOplusOperator.java"


# virtual methods
.method public abstract whitelist getActiveSimOperator()Ljava/lang/String;
.end method

.method public abstract whitelist getActiveSimRegion()Ljava/lang/String;
.end method

.method public abstract whitelist getConfigMap(Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract whitelist grantCustomizedRuntimePermissions()V
.end method

.method public abstract whitelist isInSimTriggeredSystemBlackList(Ljava/lang/String;)Z
.end method

.method public abstract whitelist notifyRegionSwitch(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist notifySimSwitch(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist notifySmartCustomizationStart()V
.end method

.method public abstract whitelist testAidl()V
.end method
