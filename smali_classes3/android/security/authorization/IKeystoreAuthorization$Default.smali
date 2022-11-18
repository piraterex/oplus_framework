.class public Landroid/security/authorization/IKeystoreAuthorization$Default;
.super Ljava/lang/Object;
.source "IKeystoreAuthorization.java"

# interfaces
.implements Landroid/security/authorization/IKeystoreAuthorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authorization/IKeystoreAuthorization;
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
.method public blacklist addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    .locals 0
    .param p1, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAuthTokensForCredStore(JJJ)Landroid/security/authorization/AuthorizationTokens;
    .locals 1
    .param p1, "challenge"    # J
    .param p3, "secureUserId"    # J
    .param p5, "authTokenMaxAgeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGateKeeperAuthToken()Landroid/hardware/security/keymint/HardwareAuthToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onLockScreenEvent(II[B[J)V
    .locals 0
    .param p1, "lockScreenEvent"    # I
    .param p2, "userId"    # I
    .param p3, "password"    # [B
    .param p4, "unlockingSids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist rename_keystore_entry(IILjava/lang/String;)V
    .locals 0
    .param p1, "old_uid"    # I
    .param p2, "new_uid"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method
