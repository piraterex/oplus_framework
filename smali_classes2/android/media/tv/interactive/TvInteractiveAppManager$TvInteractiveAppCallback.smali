.class public abstract Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInteractiveAppCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInteractiveAppServiceAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 608
    return-void
.end method

.method public whitelist onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 619
    return-void
.end method

.method public whitelist onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 630
    return-void
.end method

.method public blacklist onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .locals 0
    .param p1, "iAppInfo"    # Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 647
    return-void
.end method

.method public whitelist onTvInteractiveAppServiceStateChanged(Ljava/lang/String;III)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "state"    # I
    .param p4, "err"    # I

    .line 663
    return-void
.end method
