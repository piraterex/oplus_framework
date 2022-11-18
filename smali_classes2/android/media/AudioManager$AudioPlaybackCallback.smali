.class public abstract Landroid/media/AudioManager$AudioPlaybackCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPlaybackCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 5306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 5312
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    return-void
.end method
