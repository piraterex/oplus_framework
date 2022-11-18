.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mHasImeSurface:Z

.field private blacklist mId:J

.field private blacklist mIsRealSnapshot:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private blacklist mOrientation:I

.field private blacklist mPixelFormat:I

.field private blacklist mRotation:I

.field private blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private blacklist mTaskSize:Landroid/graphics/Point;

.field private blacklist mTopActivity:Landroid/content/ComponentName;

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskSnapshot;
    .locals 19

    .line 417
    move-object/from16 v0, p0

    new-instance v18, Landroid/window/TaskSnapshot;

    move-object/from16 v1, v18

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-object v4, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v7, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v8, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v9, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v10, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v13, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    iget v15, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v16, v12

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v17, v12

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v17}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V

    return-object v18
.end method

.method public blacklist getPixelFormat()I
    .locals 1

    .line 408
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public blacklist setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "appearance"    # I

    .line 383
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    .line 384
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 340
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 341
    return-object p0
.end method

.method public blacklist setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 363
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    .line 364
    return-object p0
.end method

.method public blacklist setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 2
    .param p1, "hasImeSurface"    # Z

    .line 398
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHasImeSurface mHasImeSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    iget-object v1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    const-string v1, "TaskSnapshot"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    .line 404
    return-object p0
.end method

.method public blacklist setId(J)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "id"    # J

    .line 325
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    .line 326
    return-object p0
.end method

.method public blacklist setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "realSnapshot"    # Z

    .line 373
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    .line 374
    return-object p0
.end method

.method public blacklist setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "isTranslucent"    # Z

    .line 388
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    .line 389
    return-object p0
.end method

.method public blacklist setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "letterboxInsets"    # Landroid/graphics/Rect;

    .line 368
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 369
    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .line 345
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    .line 346
    return-object p0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "pixelFormat"    # I

    .line 412
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    .line 413
    return-object p0
.end method

.method public blacklist setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "rotation"    # I

    .line 350
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    .line 351
    return-object p0
.end method

.method public blacklist setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 335
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 336
    return-object p0
.end method

.method public blacklist setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "size"    # Landroid/graphics/Point;

    .line 358
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    .line 359
    return-object p0
.end method

.method public blacklist setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 330
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    .line 331
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "windowingMode"    # I

    .line 378
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    .line 379
    return-object p0
.end method
