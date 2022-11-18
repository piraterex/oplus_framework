.class public Landroid/content/IClipboard$Default;
.super Ljava/lang/Object;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard;
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
.method public blacklist addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 0
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearPrimaryClip(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasClipboardText(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasPrimaryClip(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 0
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
