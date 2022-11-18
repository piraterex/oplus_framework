.class public final Landroid/media/VolumeInfo$Builder;
.super Ljava/lang/Object;
.source "VolumeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsMuted:Z

.field private blacklist mMaxVolIndex:I

.field private blacklist mMinVolIndex:I

.field private blacklist mStreamType:I

.field private blacklist mUsesStreamType:Z

.field private blacklist mVolGroupId:I

.field private blacklist mVolIndex:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "streamType"    # I

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 188
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 190
    const/16 v1, -0x64

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 191
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 192
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 193
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    .line 200
    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 201
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 202
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/VolumeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/media/VolumeInfo;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 190
    const/16 v0, -0x64

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 191
    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 192
    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 193
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmUsesStreamType(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 221
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmStreamType(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 222
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmIsMuted(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 223
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 224
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmMinVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 225
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmMaxVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 226
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmVolGroupId(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    .line 227
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .locals 2
    .param p1, "volGroup"    # Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 190
    const/16 v1, -0x64

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 191
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 192
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 193
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 210
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 211
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/VolumeInfo;
    .locals 11

    .line 284
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    const-string v1, " greater than max index:"

    const/16 v2, -0x64

    if-eq v0, v2, :cond_3

    .line 285
    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    const-string v4, "Volume index:"

    if-eq v3, v2, :cond_1

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lower than min index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    :goto_0
    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-eq v3, v2, :cond_3

    if-gt v0, v3, :cond_2

    goto :goto_1

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_3
    :goto_1
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    if-eq v0, v2, :cond_5

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-eq v3, v2, :cond_5

    if-gt v0, v3, :cond_4

    goto :goto_2

    .line 296
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min volume index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_5
    :goto_2
    new-instance v0, Landroid/media/VolumeInfo;

    iget-boolean v3, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    iget-boolean v4, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    iget v5, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iget v6, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iget v7, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    iget v8, p0, Landroid/media/VolumeInfo$Builder;->mVolGroupId:I

    iget v9, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/media/VolumeInfo;-><init>(ZZIIIIILandroid/media/VolumeInfo-IA;)V

    return-object v0
.end method

.method public blacklist setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .locals 2
    .param p1, "maxIndex"    # I

    .line 272
    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 276
    return-object p0
.end method

.method public blacklist setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .locals 2
    .param p1, "minIndex"    # I

    .line 259
    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Min volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 263
    return-object p0
.end method

.method public blacklist setMuted(Z)Landroid/media/VolumeInfo$Builder;
    .locals 0
    .param p1, "isMuted"    # Z

    .line 235
    iput-boolean p1, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 236
    return-object p0
.end method

.method public blacklist setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .locals 2
    .param p1, "volIndex"    # I

    .line 246
    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 250
    return-object p0
.end method
