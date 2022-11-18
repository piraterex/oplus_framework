.class public Lcom/oplus/preloadsource/IOplusChannelService$Default;
.super Ljava/lang/Object;
.source "IOplusChannelService.java"

# interfaces
.implements Lcom/oplus/preloadsource/IOplusChannelService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/preloadsource/IOplusChannelService;
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

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handleChannelEvent(Ljava/util/List;)V
    .locals 0
    .param p1, "packageNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
