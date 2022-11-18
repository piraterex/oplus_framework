.class public Lcom/oplus/content/IOplusFeatureMapObserver$Default;
.super Ljava/lang/Object;
.source "IOplusFeatureMapObserver.java"

# interfaces
.implements Lcom/oplus/content/IOplusFeatureMapObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/IOplusFeatureMapObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFeatureUpdate(Ljava/util/List;I)V
    .locals 0
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
