.class public abstract Landroid/media/browse/MediaBrowser$ItemCallback;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 965
    return-void
.end method

.method public whitelist onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 0
    .param p1, "item"    # Landroid/media/browse/MediaBrowser$MediaItem;

    .line 956
    return-void
.end method
