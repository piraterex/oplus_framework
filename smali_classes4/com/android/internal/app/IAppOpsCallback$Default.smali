.class public Lcom/android/internal/app/IAppOpsCallback$Default;
.super Ljava/lang/Object;
.source "IAppOpsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist opChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
