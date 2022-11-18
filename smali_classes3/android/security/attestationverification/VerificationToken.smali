.class public final Landroid/security/attestationverification/VerificationToken;
.super Ljava/lang/Object;
.source "VerificationToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/VerificationToken$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/attestationverification/VerificationToken;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private final blacklist mHmac:[B

.field private final blacklist mLocalBindingType:I

.field private final blacklist mRequirements:Landroid/os/Bundle;

.field private blacklist mUid:I

.field private final blacklist mVerificationResult:I

.field private final blacklist mVerificationTime:Ljava/time/Instant;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 234
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    .line 235
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    .line 238
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    .line 302
    :cond_0
    new-instance v0, Landroid/security/attestationverification/VerificationToken$1;

    invoke-direct {v0}, Landroid/security/attestationverification/VerificationToken$1;-><init>()V

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    sget-object v0, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/attestationverification/AttestationProfile;

    .line 271
    .local v0, "attestationProfile":Landroid/security/attestationverification/AttestationProfile;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .local v1, "localBindingType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 273
    .local v2, "requirements":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .local v3, "verificationResult":I
    sget-object v4, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/Instant;

    .line 275
    .local v4, "verificationTime":Ljava/time/Instant;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 276
    .local v5, "hmac":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 278
    .local v6, "uid":I
    iput-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 279
    const-class v7, Landroid/annotation/NonNull;

    const/4 v8, 0x0

    invoke-static {v7, v8, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 281
    iput v1, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    .line 282
    const-class v7, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {v7, v8, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 284
    iput-object v2, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    .line 285
    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v8, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 287
    iput v3, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    .line 288
    const-class v7, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;

    invoke-static {v7, v8, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 290
    iput-object v4, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    .line 291
    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v8, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 293
    iput-object v5, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    .line 294
    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 296
    iput v6, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    .line 299
    return-void
.end method

.method constructor blacklist <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[BI)V
    .locals 2
    .param p1, "attestationProfile"    # Landroid/security/attestationverification/AttestationProfile;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;
    .param p4, "verificationResult"    # I
    .param p5, "verificationTime"    # Ljava/time/Instant;
    .param p6, "hmac"    # [B
    .param p7, "uid"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 137
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 139
    iput p2, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    .line 140
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 142
    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    .line 143
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 145
    iput p4, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    .line 146
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 148
    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    .line 149
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 151
    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    .line 152
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 154
    iput p7, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    .line 157
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAttestationProfile()Landroid/security/attestationverification/AttestationProfile;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    return-object v0
.end method

.method public blacklist getHmac()[B
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    return-object v0
.end method

.method public blacklist getLocalBindingType()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    return v0
.end method

.method public blacklist getRequirements()Landroid/os/Bundle;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    return v0
.end method

.method public blacklist getVerificationResult()I
    .locals 1

    .line 196
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    return v0
.end method

.method public blacklist getVerificationTime()Ljava/time/Instant;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 250
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 253
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    sget-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 255
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 256
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    return-void
.end method
