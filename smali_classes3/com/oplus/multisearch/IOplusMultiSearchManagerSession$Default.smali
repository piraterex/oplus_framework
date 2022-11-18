.class public Lcom/oplus/multisearch/IOplusMultiSearchManagerSession$Default;
.super Ljava/lang/Object;
.source "IOplusMultiSearchManagerSession.java"

# interfaces
.implements Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerListener(Lcom/oplus/multisearch/IOplusMultiSearchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oplus/multisearch/IOplusMultiSearchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist unregisterListener()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
