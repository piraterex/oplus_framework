.class public Landroid/view/WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public greylist-max-o activityToken:Landroid/os/IBinder;

.field public greylist-max-o childTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist displayId:I

.field public greylist-max-o focused:Z

.field public blacklist hasFlagWatchOutsideTouch:Z

.field public greylist-max-o inPictureInPicture:Z

.field public greylist-max-o layer:I

.field public blacklist mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public blacklist mTransformMatrix:[F

.field public greylist-max-o parentToken:Landroid/os/IBinder;

.field public blacklist regionInScreen:Landroid/graphics/Region;

.field public blacklist taskId:I

.field public greylist-max-o title:Ljava/lang/CharSequence;

.field public greylist-max-o token:Landroid/os/IBinder;

.field public greylist-max-o type:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/WindowInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/WindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 213
    new-instance v0, Landroid/view/WindowInfo$1;

    invoke-direct {v0}, Landroid/view/WindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 52
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    .line 56
    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    .line 61
    new-instance v0, Landroid/view/MagnificationSpec;

    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 65
    return-void
.end method

.method private greylist-max-o clear()V
    .locals 3

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    .line 194
    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowInfo;->type:I

    .line 196
    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 198
    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 199
    iput-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 200
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    .line 201
    iget-object v1, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 202
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    :cond_0
    iput-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 206
    iput-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 208
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 211
    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->type:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    .line 176
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 181
    iget-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    move v0, v1

    .line 183
    .local v0, "hasChildren":Z
    if-eqz v0, :cond_5

    .line 184
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_4

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 187
    :cond_4
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    .line 189
    :cond_5
    sget-object v1, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    iput-object v1, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 190
    return-void
.end method

.method public static greylist-max-o obtain()Landroid/view/WindowInfo;
    .locals 2

    .line 68
    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    .line 69
    .local v0, "window":Landroid/view/WindowInfo;
    if-nez v0, :cond_0

    .line 70
    new-instance v1, Landroid/view/WindowInfo;

    invoke-direct {v1}, Landroid/view/WindowInfo;-><init>()V

    move-object v0, v1

    .line 72
    :cond_0
    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;
    .locals 4
    .param p0, "other"    # Landroid/view/WindowInfo;

    .line 76
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 77
    .local v0, "window":Landroid/view/WindowInfo;
    iget v1, p0, Landroid/view/WindowInfo;->displayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 78
    iget v1, p0, Landroid/view/WindowInfo;->taskId:I

    iput v1, v0, Landroid/view/WindowInfo;->taskId:I

    .line 79
    iget v1, p0, Landroid/view/WindowInfo;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 80
    iget v1, p0, Landroid/view/WindowInfo;->layer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 81
    iget-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 82
    iget-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 83
    iget-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 84
    iget-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    .line 85
    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 86
    iget-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 87
    iget-wide v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iput-wide v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 88
    iget-boolean v1, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 89
    iget-boolean v1, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 91
    iget-object v3, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/view/WindowInfo;->clear()V

    .line 107
    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "WindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", accessibility anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", watchOutsideTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 161
    const-string v2, ", mTransformMatrix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, ", mMagnificationSpec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 122
    iget-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 123
    iget-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    iget-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 127
    iget-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 132
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1, p2}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    return-void
.end method
