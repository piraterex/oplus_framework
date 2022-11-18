.class public final Landroid/media/tv/TvStreamConfig$Builder;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mGeneration:Ljava/lang/Integer;

.field private greylist-max-o mMaxHeight:Ljava/lang/Integer;

.field private greylist-max-o mMaxWidth:Ljava/lang/Integer;

.field private greylist-max-o mStreamId:Ljava/lang/Integer;

.field private greylist-max-o mType:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvStreamConfig;
    .locals 2

    .line 153
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/media/tv/TvStreamConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/TvStreamConfig;-><init>(Landroid/media/tv/TvStreamConfig-IA;)V

    .line 159
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmStreamId(Landroid/media/tv/TvStreamConfig;I)V

    .line 160
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmType(Landroid/media/tv/TvStreamConfig;I)V

    .line 161
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmMaxWidth(Landroid/media/tv/TvStreamConfig;I)V

    .line 162
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmMaxHeight(Landroid/media/tv/TvStreamConfig;I)V

    .line 163
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->-$$Nest$fputmGeneration(Landroid/media/tv/TvStreamConfig;I)V

    .line 164
    return-object v0

    .line 155
    .end local v0    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist generation(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "generation"    # I

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    .line 149
    return-object p0
.end method

.method public whitelist maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "maxHeight"    # I

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    .line 144
    return-object p0
.end method

.method public whitelist maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "maxWidth"    # I

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    .line 139
    return-object p0
.end method

.method public whitelist streamId(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "streamId"    # I

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    .line 129
    return-object p0
.end method

.method public whitelist type(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 1
    .param p1, "type"    # I

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    .line 134
    return-object p0
.end method
