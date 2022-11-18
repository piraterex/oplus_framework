.class public final Landroid/window/PictureInPictureSurfaceTransaction;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/PictureInPictureSurfaceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NOT_SET:F = -1.0f


# instance fields
.field public final blacklist mAlpha:F

.field public final blacklist mCornerRadius:F

.field public final blacklist mFloat9:[F

.field public final blacklist mPosition:Landroid/graphics/PointF;

.field public final blacklist mRotation:F

.field public final blacklist mShadowRadius:F

.field private final blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$1;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$1;-><init>()V

    sput-object v0, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "position"    # Landroid/graphics/PointF;
    .param p3, "float9"    # [F
    .param p4, "rotation"    # F
    .param p5, "cornerRadius"    # F
    .param p6, "shadowRadius"    # F
    .param p7, "windowCrop"    # Landroid/graphics/Rect;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    .line 69
    iput-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 70
    const/16 v0, 0x9

    if-nez p3, :cond_0

    .line 71
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 72
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 76
    iput p4, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 78
    :goto_0
    iput p5, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 79
    iput p6, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 80
    if-nez p7, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    .line 56
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 62
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .locals 8
    .param p1, "other"    # Landroid/window/PictureInPictureSurfaceTransaction;

    .line 84
    iget v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    iget-object v2, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget v4, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    iget v5, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    iget v6, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    iget-object v7, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V

    .line 87
    return-void
.end method

.method public static blacklist apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p0, "surfaceTransaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "tx"    # Landroid/view/SurfaceControl$Transaction;

    .line 160
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 161
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 162
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 163
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasCornerRadiusSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 172
    :cond_2
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasShadowRadiusSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 175
    :cond_3
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 178
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 110
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 111
    .local v1, "that":Landroid/window/PictureInPictureSurfaceTransaction;
    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 112
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 113
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 114
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 115
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 116
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 111
    :goto_0
    return v0
.end method

.method public blacklist getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 93
    return-object v0
.end method

.method public blacklist hasCornerRadiusSet()Z
    .locals 2

    .line 98
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasShadowRadiusSet()Z
    .locals 2

    .line 103
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 123
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 145
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureInPictureSurfaceTransaction( alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matrix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shadowRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 134
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 136
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 137
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 138
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 139
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    return-void
.end method
