.class Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;
.super Lcom/oplus/content/IOplusFeatureMapObserver$Stub;
.source "OplusFeatureConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusFeatureConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFeatureMapObserverDelegate"
.end annotation


# instance fields
.field private final blacklist mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;

.field final synthetic blacklist this$0:Lcom/oplus/content/OplusFeatureConfigManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/content/OplusFeatureConfigManager;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;)V
    .locals 0
    .param p2, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;

    .line 494
    iput-object p1, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;->this$0:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-direct {p0}, Lcom/oplus/content/IOplusFeatureMapObserver$Stub;-><init>()V

    .line 495
    iput-object p2, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;->mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;

    .line 496
    return-void
.end method


# virtual methods
.method public blacklist onFeatureUpdate(Ljava/util/List;I)V
    .locals 2
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 499
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-lt p2, v0, :cond_1

    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-static {}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->values()[Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    move-result-object v0

    aget-object v0, v0, p2

    .line 504
    .local v0, "featureID":Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;->mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;

    invoke-interface {v1, p1, v0}, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;->onFeatureUpdate(Ljava/util/List;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V

    .line 505
    return-void

    .line 500
    .end local v0    # "featureID":Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid feature id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFeatureConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method
