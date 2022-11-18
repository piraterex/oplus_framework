.class public Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Default;
.super Ljava/lang/Object;
.source "ISnapshotRuntimeProfileCallback.java"

# interfaces
.implements Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
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

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(I)V
    .locals 0
    .param p1, "errCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "profileReadFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
