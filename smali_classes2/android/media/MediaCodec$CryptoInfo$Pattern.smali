.class public final Landroid/media/MediaCodec$CryptoInfo$Pattern;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pattern"
.end annotation


# instance fields
.field private greylist-max-o mEncryptBlocks:I

.field private greylist-max-o mSkipBlocks:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEncryptBlocks(Landroid/media/MediaCodec$CryptoInfo$Pattern;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkipBlocks(Landroid/media/MediaCodec$CryptoInfo$Pattern;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    return p0
.end method

.method public constructor whitelist <init>(II)V
    .locals 0
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .line 2798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2799
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 2800
    return-void
.end method


# virtual methods
.method public whitelist getEncryptBlocks()I
    .locals 1

    .line 2822
    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    return v0
.end method

.method public whitelist getSkipBlocks()I
    .locals 1

    .line 2815
    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    return v0
.end method

.method public whitelist set(II)V
    .locals 0
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .line 2807
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    .line 2808
    iput p2, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    .line 2809
    return-void
.end method
