.class public final Landroid/os/ServiceManagerNative;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .locals 1
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Landroid/os/ServiceManagerProxy;

    invoke-direct {v0, p0}, Landroid/os/ServiceManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
