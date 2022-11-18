.class public final Landroid/service/voice/HotwordRejectedResult$Builder;
.super Ljava/lang/Object;
.source "HotwordRejectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordRejectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    .line 223
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 250
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/HotwordRejectedResult;
    .locals 4

    .line 238
    invoke-direct {p0}, Landroid/service/voice/HotwordRejectedResult$Builder;->checkNotUsed()V

    .line 239
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    .line 241
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Landroid/service/voice/HotwordRejectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mConfidenceLevel:I

    .line 244
    :cond_0
    new-instance v0, Landroid/service/voice/HotwordRejectedResult;

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mConfidenceLevel:I

    invoke-direct {v0, v1}, Landroid/service/voice/HotwordRejectedResult;-><init>(I)V

    .line 246
    .local v0, "o":Landroid/service/voice/HotwordRejectedResult;
    return-object v0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/service/voice/HotwordRejectedResult$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 230
    invoke-direct {p0}, Landroid/service/voice/HotwordRejectedResult$Builder;->checkNotUsed()V

    .line 231
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    .line 232
    iput p1, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mConfidenceLevel:I

    .line 233
    return-object p0
.end method
