.class public Landroid/security/IGenerateRkpKeyService$Default;
.super Ljava/lang/Object;
.source "IGenerateRkpKeyService.java"

# interfaces
.implements Landroid/security/IGenerateRkpKeyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IGenerateRkpKeyService;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist generateKey(I)I
    .locals 1
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyKeyGenerated(I)V
    .locals 0
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
