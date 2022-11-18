.class public interface abstract Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;
.super Ljava/lang/Object;
.source "OplusFeatureConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusFeatureConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFeatureMapObserver"
.end annotation


# virtual methods
.method public abstract whitelist onFeatureUpdate(Ljava/util/List;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
            ")V"
        }
    .end annotation
.end method
