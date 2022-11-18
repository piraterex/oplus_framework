.class Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field greylist-max-o binder:Landroid/os/IBinder;

.field greylist-max-o deathMonitor:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>()V

    return-void
.end method
