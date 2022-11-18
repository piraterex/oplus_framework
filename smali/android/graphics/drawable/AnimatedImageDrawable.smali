.class public Landroid/graphics/drawable/AnimatedImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedImageDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedImageDrawable$State;
    }
.end annotation


# static fields
.field private static final greylist-max-o FINISHED:I = -0x1

.field public static final greylist LOOP_INFINITE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REPEAT_INFINITE:I = -0x1

.field private static final greylist-max-o REPEAT_UNDEFINED:I = -0x2


# instance fields
.field private greylist-max-o mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIntrinsicHeight:I

.field private greylist-max-o mIntrinsicWidth:I

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mStarting:Z

.field private greylist-max-o mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;


# direct methods
.method public constructor whitelist <init>()V
    .locals 7

    .line 191
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 193
    return-void
.end method

.method public constructor blacklist <init>(JLandroid/graphics/ImageDecoder;IIJZIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
    .locals 18
    .param p1, "nativeImageDecoder"    # J
    .param p3, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "colorSpaceHandle"    # J
    .param p8, "extended"    # Z
    .param p9, "srcDensity"    # I
    .param p10, "dstDensity"    # I
    .param p11, "cropRect"    # Landroid/graphics/Rect;
    .param p12, "inputStream"    # Ljava/io/InputStream;
    .param p13, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    move-object/from16 v6, p0

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v5, p11

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 297
    move/from16 v0, p4

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    .line 298
    .end local p4    # "width":I
    .local v4, "width":I
    move/from16 v0, p5

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v2

    .line 300
    .end local p5    # "height":I
    .local v2, "height":I
    if-nez v5, :cond_0

    .line 301
    iput v4, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 302
    iput v2, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    goto :goto_0

    .line 304
    :cond_0
    iget v0, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 305
    invoke-static {v1, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v1

    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 306
    invoke-static {v3, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v3

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 307
    invoke-static {v9, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v9

    .line 304
    invoke-virtual {v5, v0, v1, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 309
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    .line 312
    :goto_0
    new-instance v3, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    move v12, v4

    move v13, v2

    move-wide/from16 v14, p6

    move/from16 v16, p8

    move-object/from16 v17, p11

    invoke-static/range {v9 .. v17}, Landroid/graphics/drawable/AnimatedImageDrawable;->nCreate(JLandroid/graphics/ImageDecoder;IIJZLandroid/graphics/Rect;)J

    move-result-wide v9

    move-object v0, v3

    move-object/from16 v1, p0

    move v11, v2

    move-object v12, v3

    .end local v2    # "height":I
    .local v11, "height":I
    move-wide v2, v9

    move v9, v4

    .end local v4    # "width":I
    .local v9, "width":I
    move-object/from16 v4, p12

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v12, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 315
    iget-wide v0, v12, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nNativeByteSize(J)J

    move-result-wide v0

    .line 316
    .local v0, "nativeSize":J
    const-class v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 317
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetNativeFinalizer()J

    move-result-wide v3

    .line 316
    invoke-static {v2, v3, v4, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v2

    .line 318
    .local v2, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-object v3, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v4, v3, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {v2, v3, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 319
    return-void
.end method

.method private static blacklist callOnAnimationEnd(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/AnimatedImageDrawable;",
            ">;)V"
        }
    .end annotation

    .line 567
    .local p0, "weakDrawable":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/AnimatedImageDrawable;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 568
    .local v0, "drawable":Landroid/graphics/drawable/AnimatedImageDrawable;
    if-eqz v0, :cond_0

    .line 569
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->onAnimationEnd()V

    .line 571
    :cond_0
    return-void
.end method

.method private greylist-max-o getHandler()Landroid/os/Handler;
    .locals 2

    .line 553
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist lambda$updateStateFromTypedArray$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 235
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->isAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image is not animated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nCreate(JLandroid/graphics/ImageDecoder;IIJZLandroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nDraw(JJ)J
.end method

.method private static native greylist-max-o nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetRepeatCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsRunning(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nNativeByteSize(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetBounds(JLandroid/graphics/Rect;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColorFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMirrored(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetOnAnimationEndListener(JLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/AnimatedImageDrawable;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nSetRepeatCount(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nStart(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nStop(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist onAnimationEnd()V
    .locals 2

    .line 574
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 576
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 577
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 579
    :cond_0
    return-void
.end method

.method private greylist-max-o postOnAnimationEnd()V
    .locals 2

    .line 541
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 542
    return-void

    .line 545
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method

.method private greylist-max-o postOnAnimationStart()V
    .locals 2

    .line 529
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 530
    return-void

    .line 533
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V
    .locals 16
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "srcDensityOverride"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 206
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 207
    .local v4, "oldState":Landroid/graphics/drawable/AnimatedImageDrawable$State;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 208
    .local v5, "r":Landroid/content/res/Resources;
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 209
    .local v6, "srcResId":I
    const-string v7, ": <animated-image> requires a valid \'src\' attribute"

    const/4 v8, 0x1

    const/4 v9, -0x2

    if-eqz v6, :cond_5

    .line 211
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 212
    .local v10, "value":Landroid/util/TypedValue;
    invoke-virtual {v5, v6, v3, v10, v8}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 213
    const v11, 0xffff

    if-lez v3, :cond_1

    iget v12, v10, Landroid/util/TypedValue;->density:I

    if-lez v12, :cond_1

    iget v12, v10, Landroid/util/TypedValue;->density:I

    if-eq v12, v11, :cond_1

    .line 215
    iget v12, v10, Landroid/util/TypedValue;->density:I

    if-ne v12, v3, :cond_0

    .line 216
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v12, v10, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .line 218
    :cond_0
    iget v12, v10, Landroid/util/TypedValue;->density:I

    .line 219
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v12, v13

    div-int/2addr v12, v3

    iput v12, v10, Landroid/util/TypedValue;->density:I

    .line 223
    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 224
    .local v12, "density":I
    iget v13, v10, Landroid/util/TypedValue;->density:I

    if-nez v13, :cond_2

    .line 225
    const/16 v12, 0xa0

    goto :goto_1

    .line 226
    :cond_2
    iget v13, v10, Landroid/util/TypedValue;->density:I

    if-eq v13, v11, :cond_3

    .line 227
    iget v12, v10, Landroid/util/TypedValue;->density:I

    .line 230
    :cond_3
    :goto_1
    const/4 v11, 0x0

    .line 232
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v10}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v14

    .line 233
    .local v14, "is":Ljava/io/InputStream;
    invoke-static {v5, v14, v12}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v15

    .line 234
    .local v15, "source":Landroid/graphics/ImageDecoder$Source;
    new-instance v8, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v15, v8}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "source":Landroid/graphics/ImageDecoder$Source;
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 244
    instance-of v11, v8, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v11, :cond_4

    .line 251
    iget-object v11, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v11, v11, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 253
    .local v11, "repeatCount":I
    move-object v14, v8

    check-cast v14, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 254
    .local v14, "other":Landroid/graphics/drawable/AnimatedImageDrawable;
    iget-object v15, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-object v15, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 255
    iput-object v13, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 256
    iget v13, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    iput v13, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 257
    iget v13, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    iput v13, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    .line 258
    if-eq v11, v9, :cond_5

    .line 259
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    goto :goto_2

    .line 245
    .end local v11    # "repeatCount":I
    .end local v14    # "other":Landroid/graphics/drawable/AnimatedImageDrawable;
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": <animated-image> did not decode animated"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v8

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "value":Landroid/util/TypedValue;
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "density":I
    :cond_5
    :goto_2
    iget-object v8, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v10

    iput-object v10, v8, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    .line 264
    iget-object v8, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v10, v8, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_7

    iget-object v8, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v8, v8, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    if-eqz v8, :cond_6

    iget-object v8, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v8, v8, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    aget v8, v8, v0

    if-eqz v8, :cond_6

    goto :goto_3

    .line 266
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_7
    :goto_3
    iget-object v7, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const/4 v8, 0x3

    iget-boolean v10, v4, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    invoke-virtual {v2, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 273
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 275
    .local v7, "repeatCount":I
    if-eq v7, v9, :cond_8

    .line 276
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 279
    :cond_8
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 281
    .local v0, "autoStart":Z
    if-eqz v0, :cond_9

    iget-object v8, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v8, v8, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_9

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 284
    :cond_9
    return-void
.end method


# virtual methods
.method public whitelist clearAnimationCallbacks()V
    .locals 3

    .line 522
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 524
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLjava/lang/ref/WeakReference;)V

    .line 526
    :cond_0
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 336
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 340
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    .line 343
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationStart()V

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->nDraw(JJ)J

    move-result-wide v0

    .line 349
    .local v0, "nextUpdate":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 350
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 351
    new-instance v2, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    .line 353
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 354
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 356
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    .line 358
    :cond_3
    :goto_0
    return-void

    .line 337
    .end local v0    # "nextUpdate":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called draw on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAlpha()I
    .locals 4

    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetAlpha(J)I

    move-result v0

    return v0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 328
    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 323
    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public greylist getLoopCount(I)I
    .locals 1
    .param p1, "loopCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 405
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getRepeatCount()I
    .locals 4

    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetRepeatCount(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    return v0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getRepeatCount on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 200
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedImageDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mSrcDensityOverride:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V

    .line 202
    return-void
.end method

.method public final whitelist isAutoMirrored()Z
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    return v0
.end method

.method public whitelist isRunning()Z
    .locals 4

    .line 444
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nIsRunning(J)Z

    move-result v0

    return v0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called isRunning on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$postOnAnimationEnd$2$android-graphics-drawable-AnimatedImageDrawable()V
    .locals 2

    .line 546
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 547
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 548
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 549
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$postOnAnimationStart$1$android-graphics-drawable-AnimatedImageDrawable()V
    .locals 2

    .line 534
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 535
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 536
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 583
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetBounds(JLandroid/graphics/Rect;)V

    .line 586
    :cond_0
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .locals 6
    .param p1, "layoutDirection"    # I

    .line 421
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    .line 426
    .local v1, "mirror":Z
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    .line 427
    return v0

    .line 422
    .end local v1    # "mirror":Z
    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 492
    if-nez p1, :cond_0

    .line 493
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 498
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLjava/lang/ref/WeakReference;)V

    .line 501
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_2
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .line 362
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetAlpha(JI)V

    .line 372
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 373
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha must be between 0 and 255! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAutoMirrored(Z)V
    .locals 4
    .param p1, "mirrored"    # Z

    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 411
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-boolean p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 412
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 417
    :cond_0
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 385
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_1

    .line 390
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 391
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .line 392
    .local v0, "nativeFilter":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetColorFilter(JJ)V

    .line 393
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 395
    .end local v0    # "nativeFilter":J
    :cond_1
    return-void

    .line 386
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setColorFilter on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setLoopCount(I)V
    .locals 0
    .param p1, "loopCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 157
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .locals 4
    .param p1, "repeatCount"    # I

    .line 139
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    if-eq v0, p1, :cond_0

    .line 144
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetRepeatCount(JI)V

    .line 149
    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value passed to setRepeatCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist start()V
    .locals 4

    .line 461
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStart(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    .line 467
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 469
    :cond_0
    return-void

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called start on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .locals 4

    .line 479
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStop(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    .line 485
    :cond_0
    return-void

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called stop on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 508
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    .line 517
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
