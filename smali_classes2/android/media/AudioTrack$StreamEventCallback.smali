.class public abstract Landroid/media/AudioTrack$StreamEventCallback;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamEventCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 3983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;
    .param p2, "sizeInFrames"    # I

    .line 4005
    return-void
.end method

.method public whitelist onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3997
    return-void
.end method

.method public whitelist onTearDown(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3990
    return-void
.end method
