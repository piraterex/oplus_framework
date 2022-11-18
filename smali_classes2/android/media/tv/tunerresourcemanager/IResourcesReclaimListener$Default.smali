.class public Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Default;
.super Ljava/lang/Object;
.source "IResourcesReclaimListener.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
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

.method public blacklist onReclaimResources()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
