.class public interface abstract Lcom/android/internal/telephony/ISmsSecurityService;
.super Ljava/lang/Object;
.source "ISmsSecurityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityService$Stub;,
        Lcom/android/internal/telephony/ISmsSecurityService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsSecurityService"


# virtual methods
.method public abstract blacklist register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
