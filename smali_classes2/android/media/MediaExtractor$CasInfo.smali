.class public final Landroid/media/MediaExtractor$CasInfo;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CasInfo"
.end annotation


# instance fields
.field private final blacklist mPrivateData:[B

.field private final greylist-max-o mSession:Landroid/media/MediaCas$Session;

.field private final greylist-max-o mSystemId:I


# direct methods
.method constructor blacklist <init>(ILandroid/media/MediaCas$Session;[B)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "session"    # Landroid/media/MediaCas$Session;
    .param p3, "privateData"    # [B

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    .line 281
    iput-object p2, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    .line 282
    iput-object p3, p0, Landroid/media/MediaExtractor$CasInfo;->mPrivateData:[B

    .line 283
    return-void
.end method


# virtual methods
.method public whitelist getPrivateData()[B
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/media/MediaExtractor$CasInfo;->mPrivateData:[B

    return-object v0
.end method

.method public whitelist getSession()Landroid/media/MediaCas$Session;
    .locals 1

    .line 324
    iget-object v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    return-object v0
.end method

.method public whitelist getSystemId()I
    .locals 1

    .line 291
    iget v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    return v0
.end method
