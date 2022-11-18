.class Landroid/media/MediaCodecInfo$Feature;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Feature"
.end annotation


# instance fields
.field public greylist-max-o mDefault:Z

.field public blacklist mInternal:Z

.field public greylist-max-o mName:Ljava/lang/String;

.field public greylist-max-o mValue:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "def"    # Z

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZZ)V

    .line 188
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "def"    # Z
    .param p4, "internal"    # Z

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    .line 191
    iput p2, p0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    .line 192
    iput-boolean p3, p0, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    .line 193
    iput-boolean p4, p0, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    .line 194
    return-void
.end method
