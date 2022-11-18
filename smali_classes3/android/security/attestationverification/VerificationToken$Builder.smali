.class public final Landroid/security/attestationverification/VerificationToken$Builder;
.super Ljava/lang/Object;
.source "VerificationToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/VerificationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mHmac:[B

.field private blacklist mLocalBindingType:I

.field private blacklist mRequirements:Landroid/os/Bundle;

.field private blacklist mUid:I

.field private blacklist mVerificationResult:I

.field private blacklist mVerificationTime:Ljava/time/Instant;


# direct methods
.method public constructor blacklist <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[BI)V
    .locals 2
    .param p1, "attestationProfile"    # Landroid/security/attestationverification/AttestationProfile;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;
    .param p4, "verificationResult"    # I
    .param p5, "verificationTime"    # Ljava/time/Instant;
    .param p6, "hmac"    # [B
    .param p7, "uid"    # I

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 371
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 372
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 374
    iput p2, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    .line 375
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 377
    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    .line 378
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 380
    iput p4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    .line 381
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 383
    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    .line 384
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 386
    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    .line 387
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 389
    iput p7, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mUid:I

    .line 390
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 504
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/security/attestationverification/VerificationToken;
    .locals 10

    .line 489
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 490
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 492
    new-instance v0, Landroid/security/attestationverification/VerificationToken;

    iget-object v3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    iget v4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    iget-object v5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    iget v6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    iget-object v7, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    iget-object v8, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    iget v9, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mUid:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/security/attestationverification/VerificationToken;-><init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[BI)V

    .line 500
    .local v0, "o":Landroid/security/attestationverification/VerificationToken;
    return-object v0
.end method

.method public blacklist setAttestationProfile(Landroid/security/attestationverification/AttestationProfile;)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # Landroid/security/attestationverification/AttestationProfile;

    .line 397
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 398
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 399
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 400
    return-object p0
.end method

.method public varargs blacklist setHmac([B)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # [B

    .line 465
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 466
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 467
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    .line 468
    return-object p0
.end method

.method public blacklist setLocalBindingType(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 408
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 409
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 410
    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    .line 411
    return-object p0
.end method

.method public blacklist setRequirements(Landroid/os/Bundle;)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # Landroid/os/Bundle;

    .line 419
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 420
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 421
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    .line 422
    return-object p0
.end method

.method public blacklist setUid(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 481
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 482
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 483
    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mUid:I

    .line 484
    return-object p0
.end method

.method public blacklist setVerificationResult(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 438
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 439
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 440
    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    .line 441
    return-object p0
.end method

.method public blacklist setVerificationTime(Ljava/time/Instant;)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4
    .param p1, "value"    # Ljava/time/Instant;

    .line 449
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 450
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 451
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    .line 452
    return-object p0
.end method
