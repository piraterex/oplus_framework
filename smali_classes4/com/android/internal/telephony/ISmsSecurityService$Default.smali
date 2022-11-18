.class public Lcom/android/internal/telephony/ISmsSecurityService$Default;
.super Ljava/lang/Object;
.source "ISmsSecurityService.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsSecurityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISmsSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .locals 1
    .param p1, "agent"    # Lcom/android/internal/telephony/ISmsSecurityAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z
    .locals 1
    .param p1, "request"    # Lcom/android/internal/telephony/SmsAuthorizationRequest;
    .param p2, "authorized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .locals 1
    .param p1, "agent"    # Lcom/android/internal/telephony/ISmsSecurityAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method
