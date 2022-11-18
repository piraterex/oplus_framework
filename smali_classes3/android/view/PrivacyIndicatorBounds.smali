.class public Landroid/view/PrivacyIndicatorBounds;
.super Ljava/lang/Object;
.source "PrivacyIndicatorBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/PrivacyIndicatorBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRotation:I

.field private final blacklist mStaticBounds:[Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Landroid/view/PrivacyIndicatorBounds$1;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds$1;-><init>()V

    sput-object v0, Landroid/view/PrivacyIndicatorBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    .line 48
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 215
    .local v0, "staticBounds":[Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "rotation":I
    iput-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    .line 218
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 220
    iput v1, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    .line 223
    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "staticBounds"    # [Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    .line 52
    iput p2, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    .line 53
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    return-void
.end method

.method private static blacklist insetRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 5
    .param p0, "orig"    # Landroid/graphics/Rect;
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 98
    .local v0, "left":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 99
    .local v1, "top":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    .local v2, "right":I
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 101
    .local v3, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private static blacklist scaleRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 1
    .param p0, "orig"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 135
    .local v0, "newRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 136
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 172
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/PrivacyIndicatorBounds;

    .line 176
    .local v2, "that":Landroid/view/PrivacyIndicatorBounds;
    iget-object v3, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    .line 177
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    iget v4, v2, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 176
    :goto_0
    return v0

    .line 172
    .end local v2    # "that":Landroid/view/PrivacyIndicatorBounds;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .locals 2

    .line 140
    iget-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 187
    const/4 v0, 0x1

    .line 188
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 189
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    add-int/2addr v0, v2

    .line 190
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public blacklist inset(IIII)Landroid/view/PrivacyIndicatorBounds;
    .locals 4
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 81
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 82
    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 85
    .local v0, "insetStaticBounds":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 86
    aget-object v2, v2, v1

    .line 87
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/PrivacyIndicatorBounds;->insetRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/PrivacyIndicatorBounds;->updateStaticBounds([Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    return-object v1
.end method

.method public blacklist rotate(I)Landroid/view/PrivacyIndicatorBounds;
    .locals 2
    .param p1, "rotation"    # I

    .line 108
    if-nez p1, :cond_0

    .line 109
    return-object p0

    .line 111
    :cond_0
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    iget-object v1, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    invoke-direct {v0, v1, p1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method public blacklist scale(F)Landroid/view/PrivacyIndicatorBounds;
    .locals 4
    .param p1, "scale"    # F

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 119
    return-object p0

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 123
    .local v0, "scaledStaticPos":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 124
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Landroid/view/PrivacyIndicatorBounds;->scaleRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/view/PrivacyIndicatorBounds;

    iget v2, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    invoke-direct {v1, v0, v2}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyIndicatorBounds {static bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/PrivacyIndicatorBounds;->getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateBoundsForRotation(Landroid/graphics/Rect;I)Landroid/view/PrivacyIndicatorBounds;
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 68
    iget-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 72
    .local v0, "newBounds":[Landroid/graphics/Rect;
    aput-object p1, v0, p2

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/PrivacyIndicatorBounds;->updateStaticBounds([Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "newBounds":[Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist updateStaticBounds([Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;
    .locals 2
    .param p1, "staticPositions"    # [Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    iget v1, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    invoke-direct {v0, p1, v1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Landroid/view/PrivacyIndicatorBounds;->mStaticBounds:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 200
    iget v0, p0, Landroid/view/PrivacyIndicatorBounds;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
