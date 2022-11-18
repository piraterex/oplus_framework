.class public final Landroid/hardware/display/VirtualDisplayConfig;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplayConfig$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/VirtualDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDensityDpi:I

.field private blacklist mDisplayIdToMirror:I

.field private blacklist mFlags:I

.field private blacklist mHeight:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUniqueId:Ljava/lang/String;

.field private blacklist mWidth:I

.field private blacklist mWindowManagerMirroring:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 306
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$1;

    invoke-direct {v0}, Landroid/hardware/display/VirtualDisplayConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 264
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    .line 80
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 87
    iput-object v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 94
    iput v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 100
    iput-boolean v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .local v3, "flg":I
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 270
    .local v1, "windowManagerMirroring":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 272
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 273
    .local v12, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 274
    .local v13, "densityDpi":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 275
    .local v14, "flags":I
    and-int/lit8 v5, v3, 0x20

    if-nez v5, :cond_1

    move-object/from16 v15, p1

    move-object v5, v2

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    :goto_0
    move-object v9, v5

    .line 276
    .local v9, "surface":Landroid/view/Surface;
    and-int/lit8 v5, v3, 0x40

    if-nez v5, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v10, v5

    .line 277
    .local v10, "uniqueId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 279
    .local v8, "displayIdToMirror":I
    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    .line 280
    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v2, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 282
    iput v11, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    .line 283
    const-class v5, Landroid/annotation/IntRange;

    const/4 v6, 0x0

    const-wide/16 v16, 0x1

    const-string v18, "from"

    move v7, v11

    move/from16 v19, v8

    .end local v8    # "displayIdToMirror":I
    .local v19, "displayIdToMirror":I
    move-object/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "surface":Landroid/view/Surface;
    .end local v10    # "uniqueId":Ljava/lang/String;
    .local v20, "surface":Landroid/view/Surface;
    .local v21, "uniqueId":Ljava/lang/String;
    move-wide/from16 v9, v16

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 286
    iput v12, v0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    .line 287
    const-class v5, Landroid/annotation/IntRange;

    const-wide/16 v9, 0x1

    const-string v8, "from"

    move v7, v12

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 290
    iput v13, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    .line 291
    const-class v5, Landroid/annotation/IntRange;

    const-string v8, "from"

    move v7, v13

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 294
    iput v14, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    .line 295
    const-class v5, Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;

    invoke-static {v5, v2, v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 297
    move-object/from16 v2, v20

    .end local v20    # "surface":Landroid/view/Surface;
    .local v2, "surface":Landroid/view/Surface;
    iput-object v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 298
    move-object/from16 v5, v21

    .end local v21    # "uniqueId":Ljava/lang/String;
    .local v5, "uniqueId":Ljava/lang/String;
    iput-object v5, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 299
    move/from16 v6, v19

    .end local v19    # "displayIdToMirror":I
    .local v6, "displayIdToMirror":I
    iput v6, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 300
    iput-boolean v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    .line 303
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZ)V
    .locals 23
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "uniqueId"    # Ljava/lang/String;
    .param p8, "displayIdToMirror"    # I
    .param p9, "windowManagerMirroring"    # Z

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v3, 0x0

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    .line 80
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 87
    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 94
    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 100
    iput-boolean v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    .line 128
    iput-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    .line 129
    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 131
    move/from16 v3, p2

    iput v3, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    .line 132
    const-class v5, Landroid/annotation/IntRange;

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x1

    move/from16 v7, p2

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 135
    move/from16 v5, p3

    iput v5, v0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    .line 136
    const-class v11, Landroid/annotation/IntRange;

    const/4 v12, 0x0

    const-string v14, "from"

    const-wide/16 v15, 0x1

    move/from16 v13, p3

    invoke-static/range {v11 .. v16}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 139
    move/from16 v6, p4

    iput v6, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    .line 140
    const-class v17, Landroid/annotation/IntRange;

    const/16 v18, 0x0

    const-string v20, "from"

    const-wide/16 v21, 0x1

    move/from16 v19, p4

    invoke-static/range {v17 .. v22}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 143
    iput v2, v0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    .line 144
    const-class v7, Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;

    invoke-static {v7, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 146
    move-object/from16 v4, p6

    iput-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    .line 147
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    .line 148
    move/from16 v8, p8

    iput v8, v0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    .line 149
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    .line 152
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDensityDpi()I
    .locals 1

    .line 183
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    return v0
.end method

.method public blacklist getDisplayIdToMirror()I
    .locals 1

    .line 224
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 196
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 175
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    return v0
.end method

.method public blacklist isWindowManagerMirroring()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroring:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x100

    .line 244
    :cond_0
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    .line 245
    :cond_1
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    .line 246
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 253
    :cond_3
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    :cond_4
    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    return-void
.end method
