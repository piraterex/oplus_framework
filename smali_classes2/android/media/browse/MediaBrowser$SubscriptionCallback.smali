.class public abstract Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubscriptionCallback"
.end annotation


# instance fields
.field greylist-max-o mToken:Landroid/os/Binder;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    .line 893
    return-void
.end method


# virtual methods
.method public whitelist onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 902
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    return-void
.end method

.method public whitelist onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 915
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    return-void
.end method

.method public whitelist onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .line 928
    return-void
.end method

.method public whitelist onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 943
    return-void
.end method
