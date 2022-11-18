.class public Lcom/android/internal/compat/IPlatformCompatNative$Default;
.super Ljava/lang/Object;
.source "IPlatformCompatNative.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompatNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompatNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isChangeEnabledByUid(JI)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 0
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist reportChangeByUid(JI)V
    .locals 0
    .param p1, "changeId"    # J
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method
