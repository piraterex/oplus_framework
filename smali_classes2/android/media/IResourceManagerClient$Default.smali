.class public Landroid/media/IResourceManagerClient$Default;
.super Ljava/lang/Object;
.source "IResourceManagerClient.java"

# interfaces
.implements Landroid/media/IResourceManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist reclaimResource()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method
