.class public final Landroid/media/MediaDrm$Certificate;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Certificate"
.end annotation


# instance fields
.field private greylist-max-o mCertificateData:[B

.field private greylist-max-o mWrappedKey:[B


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    .line 2436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getContent()[B
    .locals 2

    .line 2459
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mCertificateData:[B

    if-eqz v0, :cond_0

    .line 2465
    return-object v0

    .line 2463
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Certificate is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getWrappedPrivateKey()[B
    .locals 2

    .line 2444
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mWrappedKey:[B

    if-eqz v0, :cond_0

    .line 2450
    return-object v0

    .line 2448
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Certificate is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
