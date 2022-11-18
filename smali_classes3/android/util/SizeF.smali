.class public final Landroid/util/SizeF;
.super Ljava/lang/Object;
.source "SizeF.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mHeight:F

.field private final greylist-max-o mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Landroid/util/SizeF$1;

    invoke-direct {v0}, Landroid/util/SizeF$1;-><init>()V

    sput-object v0, Landroid/util/SizeF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "width"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/util/SizeF;->mWidth:F

    .line 48
    const-string/jumbo v0, "height"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/util/SizeF;->mHeight:F

    .line 49
    return-void
.end method

.method private static greylist-max-o invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SizeF: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist parseSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 139
    const-string/jumbo v0, "string must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 142
    .local v0, "sep_ix":I
    if-gez v0, :cond_0

    .line 143
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 145
    :cond_0
    if-ltz v0, :cond_1

    .line 149
    :try_start_0
    new-instance v1, Landroid/util/SizeF;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-object v1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 151
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 146
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 84
    return v1

    .line 86
    :cond_1
    instance-of v2, p1, Landroid/util/SizeF;

    if-eqz v2, :cond_3

    .line 87
    move-object v2, p1

    check-cast v2, Landroid/util/SizeF;

    .line 88
    .local v2, "other":Landroid/util/SizeF;
    iget v3, p0, Landroid/util/SizeF;->mWidth:F

    iget v4, v2, Landroid/util/SizeF;->mWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/util/SizeF;->mHeight:F

    iget v4, v2, Landroid/util/SizeF;->mHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 90
    .end local v2    # "other":Landroid/util/SizeF;
    :cond_3
    return v0
.end method

.method public whitelist getHeight()F
    .locals 1

    .line 64
    iget v0, p0, Landroid/util/SizeF;->mHeight:F

    return v0
.end method

.method public whitelist getWidth()F
    .locals 1

    .line 56
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 163
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/util/SizeF;->mHeight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/SizeF;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/SizeF;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget v0, p0, Landroid/util/SizeF;->mHeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    return-void
.end method
