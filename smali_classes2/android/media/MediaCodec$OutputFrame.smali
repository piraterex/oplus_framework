.class public final Landroid/media/MediaCodec$OutputFrame;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFrame"
.end annotation


# instance fields
.field private blacklist mAccessible:Z

.field private final blacklist mChangedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private blacklist mFormat:Landroid/media/MediaFormat;

.field private blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mIndex:I

.field private final blacklist mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private blacklist mLoaded:Z

.field private blacklist mPresentationTimeUs:J


# direct methods
.method constructor blacklist <init>(I)V
    .locals 3
    .param p1, "index"    # I

    .line 4152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 4247
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 4248
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    .line 4249
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    .line 4250
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    .line 4251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    .line 4252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    .line 4253
    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    .line 4254
    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    .line 4153
    iput p1, p0, Landroid/media/MediaCodec$OutputFrame;->mIndex:I

    .line 4154
    return-void
.end method


# virtual methods
.method blacklist clear()V
    .locals 1

    .line 4216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 4217
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 4218
    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    .line 4219
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4220
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    .line 4222
    return-void
.end method

.method public whitelist getChangedKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4209
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4210
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    iget-object v1, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4212
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 4191
    iget v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    return v0
.end method

.method public whitelist getFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 4199
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 2

    .line 4174
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    .line 4177
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0

    .line 4175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not graphic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .locals 2

    .line 4162
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    .line 4165
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    return-object v0

    .line 4163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not linear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPresentationTimeUs()J
    .locals 2

    .line 4184
    iget-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    return-wide v0
.end method

.method blacklist isAccessible()Z
    .locals 1

    .line 4225
    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    return v0
.end method

.method blacklist isLoaded()Z
    .locals 1

    .line 4238
    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return v0
.end method

.method blacklist setAccessible(Z)V
    .locals 0
    .param p1, "accessible"    # Z

    .line 4229
    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    .line 4230
    return-void
.end method

.method blacklist setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .line 4233
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    .line 4234
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    .line 4235
    return-void
.end method

.method blacklist setLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .line 4242
    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    .line 4243
    return-void
.end method
