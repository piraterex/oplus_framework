.class public Landroid/hardware/location/IContextHubTransactionCallback$Default;
.super Ljava/lang/Object;
.source "IContextHubTransactionCallback.java"

# interfaces
.implements Landroid/hardware/location/IContextHubTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onQueryResponse(ILjava/util/List;)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    .local p2, "nanoappList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    return-void
.end method

.method public blacklist onTransactionComplete(I)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
