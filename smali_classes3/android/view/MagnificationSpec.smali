.class public Landroid/view/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o offsetX:F

.field public greylist-max-o offsetY:F

.field public greylist-max-o scale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/MagnificationSpec;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/view/MagnificationSpec$1;

    invoke-direct {v0}, Landroid/view/MagnificationSpec$1;-><init>()V

    sput-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 121
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .locals 1

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 61
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 62
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 85
    return v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/MagnificationSpec;

    .line 93
    .local v2, "s":Landroid/view/MagnificationSpec;
    iget v3, p0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, v2, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, v2, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 89
    .end local v2    # "s":Landroid/view/MagnificationSpec;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 98
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 99
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    .line 100
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget v4, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    .line 101
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o initialize(FFF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 49
    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 50
    iput p2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 51
    iput p3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scale must be greater than or equal to one!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isNop()Z
    .locals 2

    .line 55
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o setTo(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "other"    # Landroid/view/MagnificationSpec;

    .line 65
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 66
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 67
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 68
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ",offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ",offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 80
    return-void
.end method
