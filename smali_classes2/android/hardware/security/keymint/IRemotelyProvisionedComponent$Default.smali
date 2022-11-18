.class public Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Default;
.super Ljava/lang/Object;
.source "IRemotelyProvisionedComponent.java"

# interfaces
.implements Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B
    .locals 1
    .param p1, "testMode"    # Z
    .param p2, "keysToSign"    # [Landroid/hardware/security/keymint/MacedPublicKey;
    .param p3, "endpointEncryptionCertChain"    # [B
    .param p4, "challenge"    # [B
    .param p5, "deviceInfo"    # Landroid/hardware/security/keymint/DeviceInfo;
    .param p6, "protectedData"    # Landroid/hardware/security/keymint/ProtectedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist generateEcdsaP256KeyPair(ZLandroid/hardware/security/keymint/MacedPublicKey;)[B
    .locals 1
    .param p1, "testMode"    # Z
    .param p2, "macedPublicKey"    # Landroid/hardware/security/keymint/MacedPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method
