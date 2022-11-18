.class public interface abstract Lcom/oplus/content/IOplusFeatureConfigManager;
.super Ljava/lang/Object;
.source "IOplusFeatureConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    }
.end annotation


# virtual methods
.method public whitelist disableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableFeature(Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableFeature(Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasFeature(Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public whitelist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .param p3, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist registerFeatureActionObserver(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerFeatureObserver(Ljava/util/List;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 1
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p3, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
            "Lcom/oplus/content/IOplusFeatureMapObserver;",
            ")Z"
        }
    .end annotation

    .line 85
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerFeatureObserver(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 1
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureObserver;",
            ")Z"
        }
    .end annotation

    .line 71
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureActionObserver(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureObserver(Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 1
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureObserver(Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;

    .line 78
    const/4 v0, 0x0

    return v0
.end method
