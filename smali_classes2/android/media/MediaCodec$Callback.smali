.class public abstract Landroid/media/MediaCodec$Callback;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 4935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
.end method

.method public abstract whitelist onInputBufferAvailable(Landroid/media/MediaCodec;I)V
.end method

.method public abstract whitelist onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract whitelist onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
.end method
