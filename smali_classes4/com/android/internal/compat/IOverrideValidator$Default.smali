.class public Lcom/android/internal/compat/IOverrideValidator$Default;
.super Ljava/lang/Object;
.source "IOverrideValidator.java"

# interfaces
.implements Lcom/android/internal/compat/IOverrideValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IOverrideValidator;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
