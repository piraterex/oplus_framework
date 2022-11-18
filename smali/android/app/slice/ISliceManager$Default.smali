.class public Landroid/app/slice/ISliceManager$Default;
.super Ljava/lang/Object;
.source "ISliceManager.java"

# interfaces
.implements Landroid/app/slice/ISliceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/slice/ISliceManager;
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
.method public blacklist applyRestore([BI)V
    .locals 0
    .param p1, "payload"    # [B
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "autoGrantPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackupPayload(I)[B
    .locals 1
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "allSlices"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "toPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist hasSliceAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "toPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
