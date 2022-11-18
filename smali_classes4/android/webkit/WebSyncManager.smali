.class abstract Landroid/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final greylist-max-o LOGTAG:Ljava/lang/String; = "websync"


# instance fields
.field protected greylist-max-o mDataBase:Landroid/webkit/WebViewDatabase;

.field protected greylist mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected whitelist test-api clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o onSyncInit()V
    .locals 0

    .line 68
    return-void
.end method

.method public greylist-max-o resetSync()V
    .locals 0

    .line 52
    return-void
.end method

.method public whitelist test-api run()V
    .locals 0

    .line 40
    return-void
.end method

.method public greylist-max-o startSync()V
    .locals 0

    .line 58
    return-void
.end method

.method public greylist-max-o stopSync()V
    .locals 0

    .line 65
    return-void
.end method

.method public greylist-max-o sync()V
    .locals 0

    .line 46
    return-void
.end method

.method abstract greylist syncFromRamToFlash()V
.end method
