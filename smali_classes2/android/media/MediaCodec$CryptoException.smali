.class public final Landroid/media/MediaCodec$CryptoException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoException$CryptoErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_FRAME_TOO_LARGE:I = 0x8

.field public static final whitelist ERROR_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x4

.field public static final whitelist ERROR_INSUFFICIENT_SECURITY:I = 0x7

.field public static final whitelist ERROR_KEY_EXPIRED:I = 0x2

.field public static final whitelist ERROR_LOST_STATE:I = 0x9

.field public static final whitelist ERROR_NO_KEY:I = 0x1

.field public static final whitelist ERROR_RESOURCE_BUSY:I = 0x3

.field public static final whitelist ERROR_SESSION_NOT_OPENED:I = 0x5

.field public static final whitelist ERROR_UNSUPPORTED_OPERATION:I = 0x6


# instance fields
.field private greylist-max-o mErrorCode:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 2478
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2479
    iput p1, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    .line 2480
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 1

    .line 2595
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    return v0
.end method
