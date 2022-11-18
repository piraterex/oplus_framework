.class public abstract Landroid/app/AppOpsManager$AppOpsCollector;
.super Landroid/app/AppOpsManager$OnOpNotedCallback;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppOpsCollector"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 9979
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpNotedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getAsyncNotedExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 9981
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
