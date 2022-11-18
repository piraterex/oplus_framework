.class public Landroid/media/browse/MediaBrowser$ConnectionCallback;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnected()V
    .locals 0

    .line 870
    return-void
.end method

.method public whitelist onConnectionFailed()V
    .locals 0

    .line 882
    return-void
.end method

.method public whitelist onConnectionSuspended()V
    .locals 0

    .line 876
    return-void
.end method
