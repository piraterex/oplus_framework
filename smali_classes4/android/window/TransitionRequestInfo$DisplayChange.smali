.class public Landroid/window/TransitionRequestInfo$DisplayChange;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$DisplayChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndRotation:I

.field private blacklist mPhysicalDisplayChanged:Z

.field private blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartRotation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Landroid/window/TransitionRequestInfo$DisplayChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$DisplayChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 67
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 69
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 74
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "startRotation"    # I
    .param p3, "endRotation"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 67
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 69
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 79
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 80
    iput p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 81
    iput p3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 82
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 67
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 69
    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 205
    .local v2, "flg":B
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 206
    .local v1, "physicalDisplayChanged":Z
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .local v3, "displayId":I
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 208
    .local v4, "startAbsBounds":Landroid/graphics/Rect;
    :goto_0
    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 209
    .local v0, "endAbsBounds":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    .local v5, "startRotation":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 212
    .local v6, "endRotation":I
    iput v3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 213
    iput-object v4, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 214
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 215
    iput v5, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 216
    iput v6, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 217
    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 220
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 101
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    return v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartRotation()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    return v0
.end method

.method public blacklist isPhysicalDisplayChanged()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    return v0
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 137
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 138
    return-object p0
.end method

.method public blacklist setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0
    .param p1, "value"    # I

    .line 149
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 150
    return-object p0
.end method

.method public blacklist setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0
    .param p1, "value"    # Z

    .line 155
    iput-boolean p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 156
    return-object p0
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 131
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 132
    return-object p0
.end method

.method public blacklist setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0
    .param p1, "value"    # I

    .line 143
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 144
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayChange { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDisplayChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 183
    :cond_0
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 184
    :cond_1
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 185
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    :cond_3
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    :cond_4
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
