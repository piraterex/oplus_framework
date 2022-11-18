.class public Landroid/system/keystore2/IKeystoreOperation$Default;
.super Ljava/lang/Object;
.source "IKeystoreOperation.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abort()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finish([B[B)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist update([B)[B
    .locals 1
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateAad([B)V
    .locals 0
    .param p1, "aadInput"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
