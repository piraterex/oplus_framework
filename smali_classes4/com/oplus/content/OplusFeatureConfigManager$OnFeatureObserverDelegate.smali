.class Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;
.super Lcom/oplus/content/IOplusFeatureObserver$Stub;
.source "OplusFeatureConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusFeatureConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFeatureObserverDelegate"
.end annotation


# instance fields
.field private final blacklist mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;

.field final synthetic blacklist this$0:Lcom/oplus/content/OplusFeatureConfigManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/content/OplusFeatureConfigManager;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;)V
    .locals 0
    .param p2, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;

    .line 369
    iput-object p1, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;->this$0:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-direct {p0}, Lcom/oplus/content/IOplusFeatureObserver$Stub;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;->mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;

    .line 371
    return-void
.end method


# virtual methods
.method public blacklist onFeatureUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 374
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;->mObserver:Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;

    invoke-interface {v0, p1}, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;->onFeatureUpdate(Ljava/util/List;)V

    .line 375
    return-void
.end method
