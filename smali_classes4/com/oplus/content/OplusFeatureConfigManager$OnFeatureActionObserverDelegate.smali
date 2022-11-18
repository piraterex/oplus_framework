.class Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;
.super Lcom/oplus/content/IOplusFeatureActionObserver$Stub;
.source "OplusFeatureConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusFeatureConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFeatureActionObserverDelegate"
.end annotation


# instance fields
.field private final blacklist mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

.field final synthetic blacklist this$0:Lcom/oplus/content/OplusFeatureConfigManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/content/OplusFeatureConfigManager;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;)V
    .locals 0
    .param p2, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    .line 612
    iput-object p1, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;->this$0:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-direct {p0}, Lcom/oplus/content/IOplusFeatureActionObserver$Stub;-><init>()V

    .line 613
    iput-object p2, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;->mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    .line 614
    return-void
.end method


# virtual methods
.method public blacklist onFeaturesActionUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 617
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-lt p3, v0, :cond_1

    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->values()[Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    move-result-object v0

    aget-object v0, v0, p3

    .line 622
    .local v0, "featureID":Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;->mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    invoke-interface {v1, p1, p2, v0}, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;->onFeaturesActionUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V

    .line 623
    return-void

    .line 618
    .end local v0    # "featureID":Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid feature id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFeatureConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method
