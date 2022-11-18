.class public interface abstract Landroid/hardware/security/keymint/IKeyMintOperation;
.super Ljava/lang/Object;
.source "IKeyMintOperation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintOperation$Stub;,
        Landroid/hardware/security/keymint/IKeyMintOperation$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "207c9f218b9b9e4e74ff5232eb16511eca9d7d2e"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 308
    const-string v0, "android$hardware$security$keymint$IKeyMintOperation"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/security/keymint/IKeyMintOperation;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist abort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist finish([B[BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist update([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateAad([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
